import 'package:jaspr/ui.dart';

class NotFoundPage extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      id: 'main',
      [
        h1([Text('404 : Not found')]),
        br(),
        Link(
          children: [Text('< Back')],
          url: Uri.parse('/'),
        ),
      ],
    );
  }
}
