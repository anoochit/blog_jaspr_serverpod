import 'package:jaspr/server.dart';

class AboutPage extends StatelessComponent {
  const AboutPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      Text('About'),
    ]);
  }
}
