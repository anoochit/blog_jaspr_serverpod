import 'package:jaspr/jaspr.dart';

import '../components/navigation.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div([
      h1([Text('Home')]),
    ]);
  }
}
