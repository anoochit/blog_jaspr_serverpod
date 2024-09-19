import 'package:serverpod/serverpod.dart';

import 'package:blog_server/src/web/routes/root.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// TODO : add jaspr
import 'package:jaspr/jaspr.dart';

//TODO : add `jaspr_options.dart` then run `jaspr serve` to generate this file.
import 'jaspr_options.dart';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
  );

  // TODO : init jaspr
  Jaspr.initializeApp(options: defaultJasprOptions, useIsolates: false);

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // Setup a default page at the web root.
  // TODO : replace root route with jasr route
  pod.webServer.addRoute(RootRoute(), '/*');

  // pod.webServer.addRoute(RouteRoot(), '/');
  // pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  // pod.webServer.addRoute(
  //   RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
  //   '/*',
  // );

  // Start the server.
  await pod.start();
}
