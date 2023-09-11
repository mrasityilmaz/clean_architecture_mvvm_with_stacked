part of '../home_view.dart';

final class _HomeViewTopSection extends ViewModelWidget<HomeViewModel> {
  const _HomeViewTopSection();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          DateFormatter.formatDayNameAndDay(viewModel.weatherModel?.shiftedTime ?? DateTime.now()),
          style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400, color: Colors.white60),
        ),
        SizedBox(height: context.lowValue),
        Text(DateFormatter.formatTime(viewModel.weatherModel?.shiftedTime ?? DateTime.now()), style: context.textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
