
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Consts/consts.dart';
import '../../Consts/list_widget.dart';
import '../../Widget_common/bg_widget.dart';
import 'categories_details.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgwidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing:8,mainAxisExtent: 200), itemBuilder: (context, index){
            return Column(children: [
              Image.asset(categoriesimg[index],
                height: 130,
                width: 200,
                fit: BoxFit.cover,
              ),
              10.heightBox,
              categorieslist[index].text.color(darkFontGrey).align(TextAlign.center).make(),
            ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() { 
              Get.to(() => CategoriesDetails(title: categorieslist[index]));
            });
          }),
        ),
      )
    );
  }
}