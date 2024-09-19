import 'package:jaspr/server.dart';

import '../components/navigation.dart';

class AboutPage extends StatelessComponent {
  const AboutPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div(classes: 'md:container md:mx-auto', [
      h1(classes: 'text-3xl font-bold', [Text('About')])
    ]);
  }
}
