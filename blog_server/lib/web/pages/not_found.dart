import 'package:jaspr/ui.dart';

import '../components/page_header.dart';
import '../components/page_title.dart';

class NotFoundPage extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container sm:mx-auto md:mx-auto lg:mx-auto mx-2', [
      PageHeader(),
      PageTitle(title: '404 : Not found'),
    ]);
  }
}
