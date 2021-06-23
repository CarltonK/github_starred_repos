import 'package:flutter/widgets.dart';

class ListScreenBody extends StatefulWidget {
  const ListScreenBody({Key? key}) : super(key: key);

  @override
  _ListScreenBodyState createState() => _ListScreenBodyState();
}

class _ListScreenBodyState extends State<ListScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
      ),
    );
  }
}
