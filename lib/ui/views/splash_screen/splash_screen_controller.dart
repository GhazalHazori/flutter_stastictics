import 'package:flutter_templat/core/utils/general_utile.dart';
import 'package:get/get.dart';
import 'package:flutter_templat/core/enums/message_type.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_toast.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    if (storage.getOrderPlaced()) {
      cartService.clearCart();
      storage.setOrderPlaced(false);
    }
    Future.delayed(Duration(seconds: 5)).then((value) {
      if (storage.getFirstLunch()) {
        // Get.off(IntroView);
      } else {
        // return SharedPrefrenceRepository.getLogeedIn()
        //     ? Get.off(MainView)
        // :
        // Get.off(LandingView);
      }
      storage.setFirstLunch(false);
      // if (storage.getSubStatus()) {
      //   Get.off(LandingViewNN());
      // } else {
      //   CustomToast.showMessage(
      //       message: "Your Sub expired", messagetype: MessagType.WARNING);
      // }
    });
    super.onInit();
  }
}
