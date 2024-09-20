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
              src: '/images/avatar.webp')
        ], href: '#')
      ],
    );
  }
}
