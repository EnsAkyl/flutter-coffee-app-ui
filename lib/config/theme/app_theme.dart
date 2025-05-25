import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTheme {
  const AppTheme._();

  static final light = FlexThemeData.light(
    scheme: FlexScheme.mango, //Temanın ana renk paletini seçer.
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog, //Scaffold,card,dialog gibi yüzeylerin renk karışımı nasıl olacağını belirler.
    blendLevel: 40, //Temadaki ana renk ile yüzeylerin ne kadar karışacağını belirleri.
    appBarStyle: FlexAppBarStyle.primary, //Appbar renginin neye göre belirleneceğini söyler
    appBarElevation: 0, //Appbarın gölge değeri
    appBarOpacity: 0.90, //Appbarın şeffaflığı
    transparentStatusBar: true, //Durum cubuğunu şeffaf yapar.
    tabBarStyle: FlexTabBarStyle.forBackground, //Tabbarın renk uyumunu background(arkaplan renkleriyle uygun tonlar).
    tooltipsMatchBackground: true, //Açıklama balonların arka plana uyum sağlar
    swapColors: true, // primay ve secondry renklerin bazı alanlarda yer değiştirmesine izin verir.
    lightIsWhite: true, // light theme'de beyaz rengi tam beyaz yapar.
    visualDensity: FlexColorScheme.comfortablePlatformDensity, //widget'ların yoğunluğunu ayarlar.
    fontFamily: GoogleFonts.kaushanScript().fontFamily,
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      fabUseShape: true,
      interactionEffects: true,
      bottomNavigationBarElevation: 0,
      bottomNavigationBarOpacity: 1,
      navigationBarOpacity: 1,
      navigationBarMutedUnselectedIcon: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorUnfocusedHasBorder: true,
      blendOnColors: true,
      popupMenuOpacity: 0.9,
    ),
  );
}
