import 'package:get/get.dart';

class CheckoutController extends GetxController {
  var count = 0.obs;
  void add() {
    count++;
  }

  void remove() {
    count--;
  }

  void calculate() {
    // Here you can calculate the total price based on the count
  }
}
