import 'package:jaspr/server.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'pages/home.dart';
import 'pages/not_found.dart';
import 'pages/post.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Router(
      errorBuilder: (context, state) => NotFoundPage(),
      routes: [
        Route(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        Route(
          path: '/post/:postId',
          builder: (context, state) =>
              PostPage(id: int.tryParse(state.params['postId']!) ?? 0),
        ),
      ],
    );
  }
}
