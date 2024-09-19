import 'package:jaspr/ui.dart';

import '../components/navigation.dart';

class NotFoundPage extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div(classes: 'md:container md:mx-auto', [
      h1(classes: 'text-3xl font-bold ', [Text('404 : Not found')]),
      br(),
      Link(children: [Text('< Back')], url: Uri.parse('/')),
    ]);
  }
}
