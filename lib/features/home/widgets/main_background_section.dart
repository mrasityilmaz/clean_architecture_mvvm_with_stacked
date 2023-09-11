part of '../home_view.dart';

class _HomeViewMainBackgroundSection extends ViewModelWidget<HomeViewModel> {
  const _HomeViewMainBackgroundSection() : super(reactive: true);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(.3),
            Colors.transparent,
          ],
        ),
      ),
      decoration: BoxDecoration(
        image: viewModel.weatherModel != null
            ? DecorationImage(
                image: AssetImage(viewModel.weatherModel!.weather.first.bgPath),
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(Colors.black, BlendMode.lighten),
              )
            : null,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: Container(
          color: Colors.grey.shade100.withOpacity(.1),
        ),
      ),
    );
  }
}
