import 'package:flutter/material.dart';

import './../utilities/utilities.dart';

class ErrorMessageWidget extends StatelessWidget {
  final String errorMessage;

  ErrorMessageWidget({Key? key, required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceConfig.screenWidth,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sentiment_dissatisfied,
            size: 150,
            color: Constants.appTheme.primaryColor,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Text(errorMessage, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
