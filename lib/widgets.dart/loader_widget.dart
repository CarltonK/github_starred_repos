import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import './../utilities/utilities.dart';

class LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: SpinKitWave(
        color: Constants.appTheme.primaryColor,
        size: 200,
      ),
    );
  }
}
