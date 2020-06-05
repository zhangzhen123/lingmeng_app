import 'package:lmlive/beans/bean/program.dart';

class CommonUtils {
  /// 获取播放地址
  static String getPlayUrl(PlayInfoBean info) {
    if (info == null) {
      return null;
    }
    var type = info.type;
    if (type == PlayInfoBean.Url) {
      //URL格式
      return info.rtmp;
    } else {
      var string = "rtmp://${info.domain}-rtmp.51lm.tv${info.streamKey}";
      return string;
    }
  }
}
