import 'dart:math' as math;
import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_coding_setup/core/enums/static_cities_enum.dart';
import 'package:my_coding_setup/core/enums/wheather_type_enum.dart';
import 'package:my_coding_setup/core/extensions/context_extension.dart';
import 'package:my_coding_setup/core/extensions/string_extension.dart';
import 'package:my_coding_setup/core/utils/date_formatter.dart';
import 'package:my_coding_setup/data/models/weather_models/forecast_model/forecast_model.dart';
import 'package:my_coding_setup/features/components/circular_progress_bar.dart';
import 'package:my_coding_setup/features/components/custom_view_model_builder.dart';
import 'package:my_coding_setup/features/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

part 'widgets/banner_card_section.dart';
part 'widgets/bottom_section.dart';
part 'widgets/city_row_section.dart';
part 'widgets/main_background_section.dart';
part 'widgets/top_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: HomeViewModel.new,
      fireOnViewModelReadyOnce: true,
      onViewModelReady: (viewModel) async => viewModel.init(),
      builder: (context, viewModel, child) {
        return const CustomViewModelBuilder<HomeViewModel>(
          isBottomSafeArea: false,
          isTopSafeArea: false,
          circularProgressIndicator: CustomCircularProgressBarWidget(),
          bodyWidget: _HomeViewBody(),
        );
      },
    );
  }
}

class _HomeViewBody extends ViewModelWidget<HomeViewModel> {
  const _HomeViewBody() : super(reactive: false);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Stack(
      children: [
        const Positioned.fill(
          child: _HomeViewMainBackgroundSection(),
        ),
        SafeArea(
          bottom: false,
          child: Padding(
            padding: context.paddingNormalTop,
            child: const Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      _HomeViewTopSection(),
                      Spacer(),
                      _HomeViewBannerCardSection(),
                      Spacer(
                        flex: 2,
                      ),
                      _HomeViewCityRowSection(),
                      Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: _HomeViewBottomSection(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
