import 'package:first_project/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key key, @required this.image})
      : assert(image != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p16.color(MyTheme.cremColor).make().p16().w40(context);
  }
}
