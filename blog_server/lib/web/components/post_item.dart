import 'package:jaspr/jaspr.dart';

class PostItem extends StatelessComponent {
  const PostItem(
      {super.key,
      required this.title,
      required this.url,
      required this.content});

  final String title;
  final String url;
  final String content;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'py-2 px-2',
      [
        div(classes: 'py-2', [
          a([
            h2(
                classes:
                    'text-2xl font-semibold hover:text-purple-600 hover:underline',
                [Text(title)])
          ], href: url)
        ]),
        div([
          p([Text(content)])
        ])
      ],
    );
  }
}
