import '../../Consts/consts.dart';
import '../../Consts/list_widget.dart';
import '../../Widget_common/home_button.dart';
import 'featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: lightGrey,
    width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchthing,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            10.heightBox,
           Expanded(
             child: SingleChildScrollView(
               physics: const BouncingScrollPhysics(),
               child: Column(
                 children: [
                   // Swiper brands
                   VxSwiper.builder(
                       aspectRatio: 16/9,
                       autoPlay: true,
                       height: 150,
                       enlargeCenterPage: true,
                       itemCount: sliderlist.length,
                       itemBuilder:(context, index) {
                         return Container(
                           child: Image.asset(
                             sliderlist[index],
                             fit: BoxFit.fill,
                           ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(),
                         );
                       }),
                   10.heightBox,
                   // deals buttons
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: List.generate(2, (index) => homeButton(
                       height : context.screenHeight * 0.15,
                       width : context.screenWidth / 2.5,
                       icon : index == 0? icTodaysDeal: icFlashDeal,
                       title : index == 0? todaydeal : flashsale,
                     )),
                   ),
                   10.heightBox,

                   VxSwiper.builder(
                       aspectRatio: 16/9,
                       autoPlay: true,
                       height: 150,
                       enlargeCenterPage: true,
                       itemCount: secondsliderlist.length,
                       itemBuilder:(context, index) {
                         return Container(
                           child: Image.asset(
                             secondsliderlist[index],
                             fit: BoxFit.fill,
                           ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(),
                         );
                       }),
                   //categories Buttons
                   10.heightBox,
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: List.generate(3, (index) => homeButton(
                       height: context.screenHeight * 0.15,
                       width: context.screenWidth / 3.5,
                       icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                       title: index == 0? topcategories : index == 1? brand : topSeller,
                     )),
                   ),
                   20.heightBox,
                   //feature categories
                   Align(
                       alignment: Alignment.centerLeft,
                       child:featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()
                   ),
                   20.heightBox,
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children: List.generate(3, (index) => Column(
                         children: [
                           featuredButton(icon: featuredImages1[index],title: featuredTitles1[index]),
                           10.heightBox,
                           featuredButton(icon: featuredImages2[index],title: featuredTitles2[index]),
                         ],
                       )).toList(),
                     ),
                   ),
                   //featured Product
                   20.heightBox,

                   Container(
                     width: double.infinity,
                     decoration: const BoxDecoration(color: Colors.white10),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [featuredProduct.text.color(darkFontGrey).fontFamily(bold).size(18).make(),
                         10.heightBox,
                         SingleChildScrollView(
                           scrollDirection: Axis.horizontal,
                           child: Row(
                             children: List.generate(6, (index) => Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Image.asset(
                                   productimg[index],
                                   width: 150,
                                   fit: BoxFit.cover,
                                 ),
                                 10.heightBox,
                                 producttitle[index] .text.fontFamily(semibold).color(darkFontGrey).make(),
                                 10.heightBox,
                                 "\$50" .text.fontFamily(bold).color(Colors.black).size(16).make()
                               ],
                             ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make()),
                           ),
                         ),

                       ],
                     ),
                   ),
                   VxSwiper.builder(
                       aspectRatio: 16/9,
                       autoPlay: true,
                       height: 150,
                       enlargeCenterPage: true,
                       itemCount: thirdsecondsliderlist.length,
                       itemBuilder:(context, index) {
                         return Container(
                           child: Image.asset(
                             thirdsecondsliderlist[index],
                             fit: BoxFit.fill,
                           ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(),
                         );
                       }),
                   20.heightBox,
                   GridView.builder(
                     physics: const NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       itemCount: 6,
                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 300),
                       itemBuilder: (context,index){
                     return Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image.asset(
                           imgP5,
                           height: 170,
                           width: 170,
                           fit: BoxFit.cover,
                         ),
                         const Spacer(),
                         10.heightBox,
                         "Apple Airpods Pro 2" .text.fontFamily(semibold).color(darkFontGrey).make(),
                         10.heightBox,
                         "\$80" .text.fontFamily(bold).color(Colors.black).size(16).make()
                       ],
                     ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make();


                       })

                 ],
               ),
             ),
           ),
          ],
        ),
      ),
    );
  }
}