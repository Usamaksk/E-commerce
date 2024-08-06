import '../../Consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: "Cart is Empty!".text.fontFamily(semibold).color(darkFontGrey).makeCentered(),
    );
  }
}