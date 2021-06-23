import 'package:flutter/material.dart';

import 'screens.dart';
import './../utilities/utilities.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get Screen Size
    DeviceConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Starred Repos',
          style: Constants.boldTitleStyle,
        ),
      ),
      body: ListScreenBody(),
    );
  }
}
