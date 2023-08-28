import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {super.key,
      required this.onChanged,
      required this.onSubmitted});


  final Function(String value) onChanged;
  final Function(String value) onSubmitted;

  static const _padding = 16.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            const SizedBox(width: _padding),
            const Icon(
              Icons.search_rounded,
              size: 28,
              color: Colors.grey,
            ),
            const SizedBox(width: _padding / 2),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: _padding, top: _padding / 8),
                child: TextField(
                  onChanged: onChanged,
                  onSubmitted: onSubmitted,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Type name of GitHub user'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
