import 'package:flutter/material.dart';

import './../../models/models.dart';
import './../../utilities/utilities.dart';
import './../../widgets.dart/widgets.dart';

class ListItem extends StatelessWidget {
  final Item model;
  const ListItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.kBoxDecoration,
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(6),
        horizontal: getProportionateScreenWidth(16),
      ),
      child: ListTile(
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(8)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileAvatar(imageUrl: model.owner!.avatarUrl!),
                Text('${model.owner!.login}', style: Constants.titleStyle),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(16)),
            Text('${model.name}', style: Constants.titleStyle),
            SizedBox(height: getProportionateScreenHeight(4)),
            model.description != null
                ? Text('${model.description}')
                : Container(),
            model.description != null
                ? SizedBox(height: getProportionateScreenHeight(8))
                : Container(),
            RichText(
              text: TextSpan(
                text: 'Starred by: ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: '${model.stargazersCount} users',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}
