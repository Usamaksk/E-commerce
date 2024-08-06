import '../Consts/consts.dart';

Widget applogo(){
  //velocity x
  return Image(image: AssetImage("assets/icon/Applogo.png"),).box.white.size(110, 110).padding(const EdgeInsets.all(8)).rounded.make();
}