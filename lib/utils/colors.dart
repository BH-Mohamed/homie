
import 'package:flutter/widgets.dart' as widget;

class MyColors {
  static const colorPrimary =  0xff003058;
  static const colorBackground = (0xffe9eef5);
  static const colorBlueExtraLight =(0xffececf7);
  static const colorBlueLight =(0xff686a93);
  static const colorBlueDark =(0xff003058);
  static const colorBlue =(0xff0059ad);
  static const colorBlue2 =(0xff4aa5ff);
  static const colorBlueLightDark =(0xff592565);
  static const colorRedRegular =(0xffe30621);
  static const colorRedBlood =(0xffb00057);
  static const colorRedLight =(0xffe42f4c);
  static const colorOrange =(0xfffa694a);
  static const colorOrangeMedium =(0xffe74c3c);
  static const colorYellowOrange =0xffffb43f;
  static const colorYellow = 0xffe6bf00;
  static const colorGray =(0xffebe8ea);
  static const colorGrayLight =(0xfffcfcfc);
  static const colorGrayMedium =(0xffc6ccd4);
  static const colorGrayMedium2 =(0xffd1d9e6);
  static const colorGreen = 0xff27ae60;
  static const redShadow =(0xff0ce30621);
  static const colorRedOpacity30 =(0xffFDB5BE);
  static const listviewColor =(0xfffaf9fd);
  static const colorGris =(0xff96a1a6);
  static const colorGreenLight =(0xff8BDECB);
  static const colorGreenLightShadow =(0xffECFAF7);
  static const colorPink =(0xffF69AAC);
  static const colorPinkShadow =(0xffFDEFF2);
  static const colorSkyBlue =(0xff74D1FD);
  static const colorSkyBlueShadow =(0xffE9F8FE);
  static const colorVilolet =(0xff7883C8);
  static const colorViloletShadow =(0xffF1F2F9);




 
}
extension ColorParser on int {
    widget.Color toWidgetColor() => widget.Color(this);
}