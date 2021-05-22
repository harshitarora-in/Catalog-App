import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.bold.xl4.color(context.theme.accentColor).make(),
        "Trending Products".text.make(),
      ],
    );
  }
}
