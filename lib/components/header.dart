import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key, required this.title});
  final String title;

  @override
  Component build(BuildContext context) {
    return div(classes: "header", [.text(title)]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".header").styles(
      width: Unit.fitContent,
      padding: .symmetric(horizontal: 75.px, vertical: 32.px),
      border: Border.all(width: 8.px, color: Colors.black),
      color: Colors.black,
      fontFamily: FontFamily("Montserrat"),
      fontSize: 30.px,
      fontWeight: .bold,
      textTransform: .upperCase,
      letterSpacing: .3554.em,
    ),
    css.media(.screen(maxWidth: 767.px), [
      css(".header").styles(
        padding: .symmetric(horizontal: 20.px, vertical: 16.px),
        fontSize: 14.px,
      ),
    ]),
  ];
}
