import 'package:flutter/material.dart';


import '../data/models/status.dart';
import 'failure_widget.dart';
import 'loading_widget.dart';

// ignore: must_be_immutable
class BaseWidget extends StatelessWidget {
  BaseWidget(
      {Key? key,
      required this.successWidget,
      required this.status,
      this.onFailurePressedButton,
      this.loadingWidget,
      this.defaultWidget})
      : super(key: key);

  final Widget? loadingWidget;
  final Widget? defaultWidget;
  Widget successWidget;
  final Status status;
  final void Function()? onFailurePressedButton;

  @override
  Widget build(BuildContext context) {
    return successWidget = switch (status) {
      Status.unKnown => defaultWidget ?? const SizedBox.shrink(),
      Status.success => successWidget,
      Status.loading => loadingWidget ?? const LoadingWidget(),
      Status.failure => Center(
            child: FailureWidget(
          onTapped: () => onFailurePressedButton?.call(),
        )),
    };
  }
}
