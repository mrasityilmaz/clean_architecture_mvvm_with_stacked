part of '../home_view.dart';

final class _HomeViewBottomSection extends ViewModelWidget<HomeViewModel> {
  const _HomeViewBottomSection() : super(reactive: false);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.6),
        ),
        child: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TopKeyListView(),
              Expanded(
                child: _BottomDetailListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class _BottomDetailListView extends ViewModelWidget<HomeViewModel> {
  const _BottomDetailListView();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return ListView.builder(
      shrinkWrap: true,
      controller: viewModel.scrollController,
      scrollDirection: Axis.horizontal,
      padding: context.paddingLow,
      itemCount: _bottomListLength(viewModel),
      itemBuilder: (context, index) {
        final e = _bottomListValues(viewModel)[index];
        return Container(
          margin: context.paddingLowRight,
          padding: context.paddingLow,
          constraints: BoxConstraints(
            minWidth: context.width * .25,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade100.withOpacity(.1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  DateFormatter.formatTime(e.calculatedAt),
                  style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  e.weather.first.icon.iconPath,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Text(
                  e.temperatureDetailModel.temperatureCelsiusString,
                  style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  int _bottomListLength(HomeViewModel viewModel) => viewModel.weatherForecastModelGroupByDate.containsKey(viewModel.selectedDetailDate)
      ? (viewModel.weatherForecastModelGroupByDate[viewModel.selectedDetailDate]?.length ?? 0)
      : viewModel.weatherForecastModelGroupByDate.entries.first.value.length;

  List<WeatherForecastModel> _bottomListValues(HomeViewModel viewModel) => viewModel.weatherForecastModelGroupByDate.containsKey(viewModel.selectedDetailDate)
      ? viewModel.weatherForecastModelGroupByDate[viewModel.selectedDetailDate] ?? []
      : viewModel.weatherForecastModelGroupByDate.entries.first.value;
}

final class _TopKeyListView extends ViewModelWidget<HomeViewModel> {
  const _TopKeyListView();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Padding(
      padding: context.paddingLowHorizontal * .4,
      child: SizedBox(
        height: kMinInteractiveDimension,
        child: ListView.builder(
          padding: context.paddingLowHorizontal + context.paddingLowTop,
          scrollDirection: Axis.horizontal,
          itemCount: viewModel.weatherForecastModelGroupByDate.keys.length,
          itemBuilder: (context, index) {
            final key = viewModel.weatherForecastModelGroupByDate.keys.elementAt(index);
            final bool isSelected = viewModel.selectedDetailDate == null ? (index == 0) : (key == viewModel.selectedDetailDate);
            final GlobalKey globalKey = GlobalKey();
            return Padding(
              key: globalKey,
              padding: context.paddingLowRight,
              child: ElevatedButton(
                onPressed: () {
                  if (globalKey.currentContext != null) {
                    Scrollable.ensureVisible(globalKey.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut, alignment: 0.01);
                  }
                  viewModel.setSelectedDetailDate(key);

                  viewModel.scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: isSelected ? Colors.white : Colors.grey.withOpacity(.5),
                    ),
                  ),
                ),
                child: Text(
                  DateFormatter.formatDayOfWeekName(key),
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
                    color: isSelected ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
