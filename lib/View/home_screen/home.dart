
import 'package:get/get.dart';

import '../../Consts/consts.dart';
import '../../controller/home_controller.dart';
import '../cart/cart_screen.dart';
import '../categories/categories_screen.dart';
import '../profile/components/profile_screen.dart';
import 'home_screen.dart';

class Home extends StatelessWidget {
  const  Home ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //int home  Controller
    var contoller = Get.put(HomeController());


    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: account),

    ];


    var navBody = [
      const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const ProfileScreen(),

    ];

   return Scaffold(
     body: Column(
       children: [
         Obx (() => Expanded(child: navBody.elementAt(contoller.currentNavIndex.value),)),
       ],
     ),
     bottomNavigationBar: Obx(
       () => BottomNavigationBar(
         currentIndex: contoller.currentNavIndex.value,
         selectedItemColor: darkFontGrey,
         selectedLabelStyle:  const TextStyle(fontFamily: semibold),
         type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.white,
         items: navbarItem,
         onTap: (value) {
           contoller.currentNavIndex.value = value;
         },
       ),
     ),
   );
  }
}