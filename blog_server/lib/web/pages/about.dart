import 'package:jaspr/server.dart';

import '../components/navigation.dart';

class AboutPage extends StatelessComponent {
  const AboutPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div([
      h1([Text('About')])
    ]);
  }
}
