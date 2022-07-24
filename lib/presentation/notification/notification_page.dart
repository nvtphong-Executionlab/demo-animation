import 'package:demo_animation/presentation/notification/noti_tile.dart';
import 'package:demo_animation/presentation/reuseable_widget/appbar.dart';
import 'package:demo_animation/theme/colors.dart';
import 'package:demo_animation/theme/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../reuseable_widget/search_bar.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(kPaddingDefault),
      child: Scaffold(
        backgroundColor: colorWhite,
        appBar: CustomAppBar(title: 'Notification'),
        body: Column(
          children: [
            SizedBox(height: kPaddingDefault,),
            SearchBar(),
            NotiTile()
          ],
        ),
      ),
    );
  }
}
