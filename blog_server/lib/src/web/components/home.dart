import 'package:jaspr/server.dart';

import 'counter.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "content", [
      div(id: "counter", [Counter()])
    ]);
  }
}
