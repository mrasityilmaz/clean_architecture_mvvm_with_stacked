part of '../home_view.dart';

class _HomeViewBannerCardSection extends ViewModelWidget<HomeViewModel> {
  const _HomeViewBannerCardSection();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    final WeatherTypeEnum weatherType = viewModel.weatherModel?.weather.first.icon ?? WeatherTypeEnum.clearSkyDay;

    return Padding(
      padding: context.paddingNormalHorizontal * 1.5,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade50.withOpacity(.2),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: context.paddingLow * 2,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IntrinsicWidth(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: FractionallySizedBox(
                                widthFactor: .55,
                                child: Image.asset(weatherType.iconPath),
                              ),
                            ),
                            Text(
                              viewModel.weatherModel?.weather.first.description?.capitalize() ?? weatherType.weatherDescription.replaceAll('_', ' ').capitalize(),
                              style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: FractionallySizedBox(
                        alignment: Alignment.topRight,
                        widthFactor: .6,
                        child: FittedBox(
                          alignment: Alignment.topRight,
                          fit: BoxFit.fitWidth,
                          child: ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white, Colors.white.withOpacity(.1)],
                            ).createShader(bounds),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      (viewModel.weatherModel?.temperatureDetailModel.temperatureValue ?? 0).roundToDouble().toStringAsFixed(0),
                                      style: context.textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w500, height: 1.1),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent,
                                        border: Border.all(color: Colors.white.withOpacity(.8), width: context.normalValue * .2),
                                      ),
                                      height: context.normalValue * .8,
                                      width: context.normalValue * .8,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        const Icon(CupertinoIcons.cloud),
                        const SizedBox(height: 3),
                        Text(
                          '%${viewModel.weatherModel?.cloudDetail.cloudiness ?? 0}',
                        ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        const Icon(CupertinoIcons.wind),
                        const SizedBox(height: 3),
                        Text('${viewModel.weatherModel?.windDetail.windSpeed ?? 0} km/h'),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        Transform.rotate(
                          angle: ((viewModel.weatherModel?.windDetail.windDegree ?? 0) * math.pi) / 180,
                          child: const Icon(Icons.arrow_circle_up_rounded),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          '${viewModel.weatherModel?.windDetail.windDegree ?? 0}°',
                        ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        const Icon(Icons.water_drop_outlined),
                        const SizedBox(height: 3),
                        Text('%${viewModel.weatherModel?.temperatureDetailModel.humidity ?? 0}'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
