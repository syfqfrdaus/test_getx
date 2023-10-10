import 'package:get/get.dart';
import 'package:test_getx/controller/list_controller.dart';
import 'package:test_getx/controller/tap_controller.dart';

Future<void> init() async{
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());
}