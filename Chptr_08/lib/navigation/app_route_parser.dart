import 'package:flutter/material.dart';
import 'app_link.dart';

// 1
class AppRouteParser extends RouteInformationParser<AppLink> {
  //2
  @override
  Future<AppLink> parseRouteInformation(
      RouteInformation routeInformation) async {
    // 3
    final link = AppLink.fromLocation(routeInformation.location);
    return link;
  }

  // 4
  RouteInformation restoreRouteInformation(AppLink appLink) {
    // 5
    final location = appLink.toLocation();
    return RouteInformation(location: location);
  }
}
