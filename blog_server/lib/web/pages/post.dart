import 'package:jaspr/jaspr.dart';

import '../components/navigation.dart';
import '../components/page_title.dart';

class PostPage extends StatelessComponent {
  const PostPage({super.key, required this.id});
  final int id;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield PageTitle(title: 'Home');
  }
}
