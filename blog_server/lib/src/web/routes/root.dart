// import 'dart:io';

// import 'package:blog_server/src/web/widgets/default_page_widget.dart';
// import 'package:serverpod/serverpod.dart';

// class RouteRoot extends WidgetRoute {
//   @override
//   Future<Widget> build(Session session, HttpRequest request) async {
//     return DefaultPageWidget();
//   }
// }

import 'dart:io';

import 'package:jaspr/server.dart';
import 'package:jaspr_serverpod/jaspr_serverpod.dart';
import 'package:serverpod/serverpod.dart';

import '../components/home.dart';

class RootRoute extends JasprRoute {
  @override
  Future<Component> build(Session session, HttpRequest request) async {
    return Document(
      title: "Built with Serverpod & Jaspr",
      head: [
        link(rel: "stylesheet", href: "/css/style.css"),
      ],
      body: Home(),
    );
  }
}
