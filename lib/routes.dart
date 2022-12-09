import 'package:flutter/material.dart';
import 'package:flutter_app/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/search':
        return MaterialPageRoute(builder: (_) => SearchPage());
      case '/galeri':
        return MaterialPageRoute(builder: (_) => GaleriPage());
      case '/inbox':
        return MaterialPageRoute(builder: (_) => InboxPage());
      case '/profil':
        return MaterialPageRoute(builder: (_) => ProfilPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}
