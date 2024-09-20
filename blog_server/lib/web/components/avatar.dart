import 'package:jaspr/jaspr.dart';

class Avatar extends StatelessComponent {
  const Avatar({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'flex justify-center py-4',
      [
        a([
          img(
              classes: 'h-32 w-32 rounded-full',
              alt: 'avatar',
              src: 'https://avatars.githubusercontent.com/u/1182518?v=4')
        ], href: '#')
      ],
    );
  }
}
