import 'package:ecommerce/Consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Consts/colors.dart';
import '../../Consts/list_widget.dart';
import '../../Widget_common/our_button.dart';


class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //swiper section
                VxSwiper.builder(
                  autoPlay: true,
                    height: 350,
                    aspectRatio: 16/9,
                    itemCount: 3, itemBuilder: (context,index){
                    return Image.asset(imgP5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );

                }),
                10.heightBox,
                //title of product
                title!.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                5.heightBox,
                //rating
                VxRating(onRatingUpdate: (value){},
                  normalColor: textfieldGrey,
                  selectionColor: golden,
                    count: 5,
                  size: 25,
                  stepInt: true
                ),
                10.heightBox,
                "\$25".text.color(darkFontGrey).fontFamily(bold).size(18).make(),
                10.heightBox,

                Row(
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          "Seller ".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          "In Brand Store".text.white.fontFamily(semibold).color(darkFontGrey).make(),
                      ],
                    ),
                        )),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message_rounded,color: darkFontGrey,),
                    ),
                  ],
                ).box.height(60).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),


                20.heightBox,
                // colors Section
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Color:".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: List.generate(3, (index) => VxBox()
                              .size(40,40)
                              .roundedFull
                              .color(Vx.randomPrimaryColor)
                              .margin(const EdgeInsets.symmetric(horizontal: 4))
                              .make()),
                        ),
                      ],
                    ).box.padding(const EdgeInsets.all(8)).make(),

                    //quality row

                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Quantity:".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                            "0".text.size(16).color(textfieldGrey).make(),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                            10.widthBox,
                            "(0 available )".text.color(textfieldGrey).make(),
                          ],
                        ),
                      ],
                    ).box.padding(const EdgeInsets.all(8)).make(),
                    //total row

                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Total:".text.color(textfieldGrey).make(),
                        ),
                      "\$0.00".text.color(Colors.red).size(16).fontFamily(bold).make(),
                      ],
                    ).box.padding(const EdgeInsets.all(8)).make(),
                  ],
                ).box.white.shadowSm.make(),
                //description section
                10.heightBox,
                "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                10.heightBox,
                "This is a Dummy items and dummy description here..".text.color(textfieldGrey).make(),

                //button section
                ListView(
                  shrinkWrap: true,
                  children: List.generate(ItemsDetailButtonList.length,
                          (index) => ListTile(
                    title: ItemsDetailButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                            trailing: const Icon(Icons.arrow_forward),

                  )),
                ),
                20.heightBox,

                productsynoumaylike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),

                10.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(6, (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP1,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                        10.heightBox,
                        "Apple Homepod Mini" .text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$50" .text.fontFamily(bold).color(Colors.black).size(16).make()
                      ],
                    ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make()),
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(color: Colors.grey,onPress: (){},textColor: whiteColor,title: "Add to Cart"),
          ),
        ],
      ),

    );
  }}