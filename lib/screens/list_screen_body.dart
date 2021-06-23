import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import './../utilities/utilities.dart';
import './../providers/providers.dart';
import './../widgets.dart/widgets.dart';

class ListScreenBody extends StatefulWidget {
  const ListScreenBody({Key? key}) : super(key: key);

  @override
  _ListScreenBodyState createState() => _ListScreenBodyState();
}

class _ListScreenBodyState extends State<ListScreenBody> {
  Future? getStarredReposFuture;

  @override
  void initState() {
    // Call endpoint outside build to avoid widget rebuilding
    getStarredReposFuture = context.read<ApiProvider>().getStarredRepos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: FutureBuilder(
            future: getStarredReposFuture,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.active:
                case ConnectionState.none:
                  String error = snapshot.error.toString();
                  return ErrorMessageWidget(errorMessage: error);
                case ConnectionState.waiting:
                  return LoaderWidget();
                case ConnectionState.done:
              }
              return LoaderWidget();
            },
          ),
        ),
      ),
    );
  }
}
