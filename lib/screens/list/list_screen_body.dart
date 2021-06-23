import 'package:flutter/widgets.dart';
import 'package:github_starred_repos/screens/screens.dart';
import 'package:provider/provider.dart';

import '../../utilities/utilities.dart';
import '../../providers/providers.dart';
import '../../widgets.dart/widgets.dart';
import '../../models/models.dart';
import './../screens.dart';

class ListScreenBody extends StatefulWidget {
  const ListScreenBody({Key? key}) : super(key: key);

  @override
  _ListScreenBodyState createState() => _ListScreenBodyState();
}

class _ListScreenBodyState extends State<ListScreenBody> {
  Future<ResponseModel>? getStarredReposFuture;

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
          padding: EdgeInsets.only(
            top: getProportionateScreenWidth(20),
          ),
          child: FutureBuilder<ResponseModel>(
            future: getStarredReposFuture,
            builder: (context, AsyncSnapshot<ResponseModel> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.active:
                case ConnectionState.none:
                  return Center(
                    child: ErrorMessageWidget(
                      errorMessage: 'There was an error fetching data',
                    ),
                  );
                case ConnectionState.waiting:
                  return LoaderWidget();
                case ConnectionState.done:
                  return ListView.builder(
                    itemCount: snapshot.data!.items!.length,
                    itemBuilder: (context, index) {
                      Item model = snapshot.data!.items![index];
                      return ListItem(model: model);
                    },
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
