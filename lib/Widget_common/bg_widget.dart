import '../Consts/consts.dart';

Widget bgwidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/icon/my_bg.png"),fit: BoxFit.fill)
    ),
    child: child,
  );
}