import 'package:flutter/material.dart';

class DevLabAppStyle {
  // colors
  static const devLab_primaryColor = Color(0xFFFF0000);
  static const devLab_primaryColorLight = Color(0xFFFFCDD2);
  static const devLab_greenColor = Color(0xFF32A10D);
  static const devLab_skyBlueColor = Color(0xFF4BFFFF);
  static const devLab_yelloColor = Color(0xFFFFD800);
  static const white = Color(0xFFFFFFFF);

  // sizes
  static const double sidePadding = 15;
  static const int titleFontSize = 34;
  static const double buttonRadius = 18;
}

class PrimaryDevLabTheme {
  // This is the primary theme for app
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: DevLabAppStyle.devLab_primaryColor,
      primaryColorLight: DevLabAppStyle.devLab_primaryColorLight,
      backgroundColor: DevLabAppStyle.white,
      accentColor: DevLabAppStyle.devLab_primaryColorLight,
      sliderTheme: SliderThemeData(
        activeTrackColor: DevLabAppStyle.devLab_primaryColor,
        inactiveTrackColor: Colors.red[100],
        trackShape: RectangularSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: Colors.redAccent,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: DevLabAppStyle.devLab_primaryColor,
        shape: RoundedRectangleBorder(),
        textTheme: ButtonTextTheme.primary,
        // splashColor: DevLabAppStyle.devLab_primaryColorLight,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: DevLabAppStyle.devLab_primaryColor,
        splashColor: DevLabAppStyle.devLab_primaryColorLight
      ),
      textTheme: theme.textTheme.copyWith(
        // 'Title' => h6
        headline6: theme.textTheme.headline6.copyWith(
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
