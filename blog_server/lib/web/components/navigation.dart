import 'package:jaspr/jaspr.dart';

class Navigation extends StatefulComponent {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield nav([
      a([Text('Home')], href: '/'),
      a([Text('Blog')], href: '/blog'),
      a([Text('About')], href: '/about'),
    ]);
  }
}
