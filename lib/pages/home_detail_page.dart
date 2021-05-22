import 'package:first_project/models/catalog.dart';
import 'package:first_project/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.cremColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl2.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyTheme.darkBluishColor,
                  ),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add to cart".text.make(),
            ).wh(150, 40)
          ],
        ).pOnly(left: 20, right: 28, top: 10, bottom: 10),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(
                  catalog.id.toString(),
                ),
                child: Image.network(
                  catalog.image,
                )).h40(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text
                          .color(MyTheme.darkBluishColor)
                          .xl2
                          .bold
                          .make(),
                      catalog.desc.text.lg
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "Et erat at aliquyam amet clita, no tempor justo sanctus sadipscing at sed justo, gubergren diam amet eirmod nonumy invidunt."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16(),
                    ],
                  ).pOnly(top: 48),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
