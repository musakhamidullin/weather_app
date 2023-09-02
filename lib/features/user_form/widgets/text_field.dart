import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      this.controller,
      this.hintText,
      this.textInputType,
      this.suffixIcons = const [],
      this.obscureText});

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? textInputType;
  final List<String> suffixIcons;
  final bool? obscureText;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _isVisible = false;

  final _icons = <Widget>[const SizedBox(), const SizedBox()];

  @override
  void initState() {
    super.initState();

    if (widget.suffixIcons.length == 2) {
      _icons[0] = SvgPicture.asset(widget.suffixIcons[0]);
      _icons[1] = SvgPicture.asset(widget.suffixIcons[1]);
    }

    if(widget.obscureText != null) _isVisible = widget.obscureText!;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.black
      ),
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIconConstraints:
            const BoxConstraints(maxHeight: 24, maxWidth: 24),
        suffixIcon: widget.suffixIcons.length == 2
            ? GestureDetector(
                onTap: () => setState(() {
                      _isVisible = !_isVisible;

                    }),
                child: !_isVisible ? _icons[0] : _icons[1])
            : empty,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: primary),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: primary),
        ),
      ),
      keyboardType: widget.textInputType,
      obscureText: _isVisible,
    );
  }
}
