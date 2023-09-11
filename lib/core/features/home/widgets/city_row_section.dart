part of '../home_view.dart';

class _HomeViewCityRowSection extends ViewModelWidget<HomeViewModel> {
  const _HomeViewCityRowSection();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: context.normalValue * 1.5,
          child: FractionallySizedBox(
            widthFactor: .6,
            child: FittedBox(
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: viewModel.selectedCityIndex > 0 ? Colors.white : Colors.white10,
              ),
            ),
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth,
                      height: kMinInteractiveDimension * .7,
                      child: PageView.builder(
                        onPageChanged: (value) async {
                          await viewModel.setSelectedCity(value, viewModel.cities[value]);
                        },
                        itemBuilder: (context, index) {
                          final StaticCitiesEnum currentValue = viewModel.cities[index];
                          return SizedBox(
                            width: constraints.maxWidth,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: FittedBox(
                                alignment: Alignment.centerRight,
                                fit: BoxFit.fitHeight,
                                child: Text('${currentValue.cityName}, ${currentValue.countryName}', style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600, height: 1)),
                              ),
                            ),
                          );
                        },
                        itemCount: StaticCitiesEnum.values.length,
                      ),
                    ),
                  ],
                ),
                DotsIndicator(
                  dotsCount: viewModel.cities.length,
                  position: viewModel.selectedCityIndex,
                  decorator: const DotsDecorator(
                    activeColor: Colors.white,
                    color: Colors.white30,
                    size: Size.square(8),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: context.normalValue * 1.5,
          child: FractionallySizedBox(
            widthFactor: .6,
            child: FittedBox(
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: viewModel.selectedCityIndex < viewModel.cities.length - 1 ? Colors.white : Colors.white10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
