import 'package:flutter/material.dart';
import 'package:packages/extensions/size_app.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(
            color: Colors.grey,
          ),
          10.sizeWidth,
          const Text(
            "Proses ...",
          ),
        ],
      ),
    );
  }
}
