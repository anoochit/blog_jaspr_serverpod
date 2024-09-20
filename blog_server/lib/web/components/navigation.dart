import 'package:jaspr/jaspr.dart';

class Navigation extends StatefulComponent {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield nav(classes: 'flex justify-center space-x-4', [
      a(
          classes: 'px-2 py-3 hover:text-purple-600 hover:underline',
          [Text('Home')],
          href: '/'),
      a(
          classes: 'px-2 py-3 hover:text-purple-600 hover:underline',
          [Text('Blog')],
          href: '/blog'),
      a(
          classes: 'px-2 py-3 hover:text-purple-600 hover:underline',
          [Text('About')],
          href: '/about'),
    ]);
  }
}
