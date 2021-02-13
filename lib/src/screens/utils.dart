import 'package:flutter/cupertino.dart';

const RED_HEADER_HEIGHT_RATIO = 0.15;
const Color HEADER_COLOR = Color(0xffd13f3f);

class RedHeader extends StatelessWidget {
  Widget child;

  RedHeader({@required this.child}) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    var RED_HEADER_HEIGHT =
        MediaQuery.of(context).size.height * RED_HEADER_HEIGHT_RATIO;
    return Container(
        color: HEADER_COLOR,
        height: RED_HEADER_HEIGHT,
        width: double.infinity,
        child: this.child);
  }
}
