

import '../../../Consts/consts.dart';
import '../../../Consts/list_widget.dart';
import '../../../Widget_common/bg_widget.dart';
import 'details_cart.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                // edit profile section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Align(alignment: Alignment.topRight,child: Icon(Icons.edit,color: Colors.white,)).onTap(() {

                  }),
                ),


                //users details section

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset(imgProfile,width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                      10.widthBox,
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User ".text.fontFamily(semibold).white.make(),
                          "Usama123@gmail.com".text.white.make(),

                        ],
                      )),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white,
                          )
                        ),
                          onPressed: (){}, child: logout.text.fontFamily(semibold).white.make(),
                      )
                    ],
                  ),
                ),
                20.heightBox,
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   detailsCard(count: "00",title: "in your cart",width: context.screenWidth/3.4),
                   detailsCard(count: "32",title: "in your wishlist",width: context.screenWidth/3.4),
                   detailsCard(count: "675",title: "in your orders",width: context.screenWidth/3.4),
                 ],
               ),

                //button section

                ListView.separated(
                  shrinkWrap: true,
                     separatorBuilder: (context,index){
                      return Divider(
                        color: lightGrey,
                      );
                },
                  itemCount: profileButtonlist.length,
                  itemBuilder: (BuildContext context, int index) {
                       return ListTile(
                         leading: Image.asset(profilelButtonicon[index],width: 22,),
                         title: profileButtonlist[index].text.fontFamily(semibold).color(darkFontGrey).make(),

                       );
                  },

                ).box.white.margin(const EdgeInsets.all(12)).rounded.padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(Colors.white).make(),
              ],
            ),
          ),

        ),
    );
  }
}