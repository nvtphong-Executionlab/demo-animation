// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

import '../presentation/homepage.dart' as _i1;
import '../presentation/notification/notification_page.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    NotificationRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ChatRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    NewsFeedRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    AnnouncementRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    NotificationRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NotificationPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(NotificationRouter.name,
              path: 'notification',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(NotificationRoute.name,
                    path: '', parent: NotificationRouter.name)
              ]),
          _i2.RouteConfig(ChatRouter.name,
              path: 'chat', parent: HomeRoute.name),
          _i2.RouteConfig(NewsFeedRouter.name,
              path: 'newsfeed', parent: HomeRoute.name),
          _i2.RouteConfig(AnnouncementRouter.name,
              path: 'announcement', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class NotificationRouter extends _i2.PageRouteInfo<void> {
  const NotificationRouter({List<_i2.PageRouteInfo>? children})
      : super(NotificationRouter.name,
            path: 'notification', initialChildren: children);

  static const String name = 'NotificationRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ChatRouter extends _i2.PageRouteInfo<void> {
  const ChatRouter() : super(ChatRouter.name, path: 'chat');

  static const String name = 'ChatRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class NewsFeedRouter extends _i2.PageRouteInfo<void> {
  const NewsFeedRouter() : super(NewsFeedRouter.name, path: 'newsfeed');

  static const String name = 'NewsFeedRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AnnouncementRouter extends _i2.PageRouteInfo<void> {
  const AnnouncementRouter()
      : super(AnnouncementRouter.name, path: 'announcement');

  static const String name = 'AnnouncementRouter';
}

/// generated route for
/// [_i3.NotificationPage]
class NotificationRoute extends _i2.PageRouteInfo<void> {
  const NotificationRoute() : super(NotificationRoute.name, path: '');

  static const String name = 'NotificationRoute';
}
