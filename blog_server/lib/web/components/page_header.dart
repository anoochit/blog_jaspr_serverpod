import 'package:blog_server/web/components/avatar.dart';
import 'package:blog_server/web/components/navigation.dart';
import 'package:blog_server/web/components/slogan.dart';
import 'package:jaspr/jaspr.dart';

class PageHeader extends StatelessComponent {
  const PageHeader({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      [
        Avatar(),
        Slogan(),
        Navigation(),
      ],
    );
  }
}
