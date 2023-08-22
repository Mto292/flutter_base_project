import '../constants/app/app_constant.dart';
import '../libs/app/size_config.dart';

/// [horizontalScale] Font size ları ölçeklendirmek için kullanılmakta
extension WidgetsScale on num {
  double get horizontalScale => this * (SizeConfig.screenWidth / designScreenWidth);

  double get verticalScale => this * (SizeConfig.screenHeight / designScreenHeight);
}
