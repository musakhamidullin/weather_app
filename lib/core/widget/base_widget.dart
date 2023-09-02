import 'package:flutter/material.dart';


import '../data/models/status.dart';
import 'loading_widget.dart';

// ignore: must_be_immutable
class BaseWidget extends StatelessWidget {
  BaseWidget(
      {Key? key,
      required this.widget,
      required this.status,
      this.onFailurePressedButton,
      this.loadingWidget,
      this.defaultWidget})
      : super(key: key);

  final Widget? loadingWidget;
  final Widget? defaultWidget;
  Widget widget;
  final Status status;
  final void Function()? onFailurePressedButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      widget,

      if(status == Status.loading ) const LoadingWidget()

      ],
    );
  }
}
