// TODO : create jaspr route
import 'dart:io';

import 'package:jaspr/server.dart';
import 'package:jaspr_serverpod/jaspr_serverpod.dart';
import 'package:serverpod/serverpod.dart';

import '../../../web/app.dart';

class RootRoute extends JasprRoute {
  @override
  Future<Component> build(Session session, HttpRequest request) async {
    // html page
    return Document(
      // title
      title: "Blog : Built with Serverpod & Jaspr",
      lang: "en",
      // header
      head: [
        link(href: 'styles.css', rel: 'stylesheet'),
      ],
      // app with route
      body: App(),
    );
  }
}
