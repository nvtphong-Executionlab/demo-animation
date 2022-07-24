import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:demo_animation/presentation/notification/notification_page.dart';

import '../presentation/homepage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
        path: 'notification',
        name: 'NotificationRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: NotificationPage
          )
        ]
      ),
      AutoRoute(
        path: 'chat',
        name: 'ChatRouter',
        page: EmptyRouterPage,
      ),
      AutoRoute(
        path: 'newsfeed',
        name: 'NewsFeedRouter',
        page: EmptyRouterPage,
      ),
      AutoRoute(
        path: 'announcement',
        name: 'AnnouncementRouter',
        page: EmptyRouterPage
      )
    ])
  ],
)
class $AppRouter {}