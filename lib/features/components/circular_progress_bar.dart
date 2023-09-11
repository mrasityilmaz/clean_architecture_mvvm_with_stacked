import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_coding_setup/core/extensions/context_extension.dart';

class CustomCircularProgressBarWidget extends StatelessWidget {
  const CustomCircularProgressBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade600.withOpacity(.5),
            borderRadius: BorderRadius.circular(15),
          ),
          constraints: BoxConstraints.tightFor(
            width: context.width * .4,
            height: context.width * .4,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.cloud,
                size: context.width * .25,
              ),
              Text(
                'Loading...',
                style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: Colors.white, height: 1),
              ),
              const SizedBox(height: 5),
              const CircularProgressIndicator.adaptive(),
            ],
          ),
        ),
      ),
    );
  }
}
