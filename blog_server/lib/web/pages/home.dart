import 'package:jaspr/jaspr.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'main', [
      h1([Text('Hello!')]),
    ]);
  }
}
