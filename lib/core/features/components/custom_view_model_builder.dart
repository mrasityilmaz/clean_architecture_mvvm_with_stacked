import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CustomViewModelBuilder<T extends BaseViewModel> extends ViewModelWidget<T> {
  const CustomViewModelBuilder({
    required this.bodyWidget,
    super.key,
    this.circularProgressIndicator,
    this.errorWidget,
    this.emptyWidget,
    this.isBottomSafeArea = true,
    this.isTopSafeArea = true,
    this.scaffoldBackgroundColor,
  }) : super(reactive: true);

  final Widget bodyWidget;
  final Color? scaffoldBackgroundColor;
  final Widget? circularProgressIndicator;
  final Widget? errorWidget;
  final Widget? emptyWidget;

  final bool isTopSafeArea;
  final bool isBottomSafeArea;

  @override
  Widget build(BuildContext context, T viewModel) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor ?? Colors.black,
      body: SafeArea(
        bottom: isBottomSafeArea,
        top: isTopSafeArea,
        child: Stack(
          children: [
            if (viewModel.initialised) ...[
              bodyWidget,
            ],
            if (viewModel.isBusy) ...[
              Center(child: circularProgressIndicator ?? const CircularProgressIndicator()),
            ],
            if (viewModel.hasError) ...[
              const Center(child: Text('Error')),
            ],
          ],
        ),
      ),
    );
  }
}
