import 'package:blog_server/web/components/page_header.dart';
import 'package:blog_server/web/components/page_title.dart';
import 'package:jaspr/server.dart';

class AboutPage extends StatelessComponent {
  const AboutPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container sm:mx-auto md:mx-auto lg:mx-auto mx-2', [
      PageHeader(),
      PageTitle(title: 'About'),
    ]);
  }
}
