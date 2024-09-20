import 'package:jaspr/jaspr.dart';

class Slogan extends StatelessComponent {
  const Slogan({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'flex justify-center py-2',
      [
        h3(
            classes: 'text-2xl font-normal',
            [Text('Human knowledge belongs to The World')])
      ],
    );
  }
}
