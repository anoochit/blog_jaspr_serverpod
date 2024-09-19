import 'package:jaspr/ui.dart';

import '../components/navigation.dart';

class NotFoundPage extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div([
      h1([Text('404 : Not found')]),
      a(
        [Text('< Back')],
        href: '#',
      ),
    ]);
  }
}
