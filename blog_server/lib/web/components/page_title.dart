import 'package:jaspr/jaspr.dart';

class PageTitle extends StatelessComponent {
  const PageTitle({super.key, required this.title});

  final String title;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'py-4 px-2',
      [
        h1(classes: 'text-3xl font-semibold', [Text(title)])
      ],
    );
  }
}
