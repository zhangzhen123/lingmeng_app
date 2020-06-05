import 'package:lmlive/beans/bean/program.dart';

class LiveRoomBasic {
  String headPic;
  String isLiving;
  String isPcLive;
  String playUrl;
  String prePic;
  String programName;
  String screenType;
  String typeCode;
  int anchorId;
  int anchorLevel;
  int programId;
  int userId;
  PlayInfoBean playInfo;

  LiveRoomBasic(
      {this.headPic,
      this.isLiving,
      this.isPcLive,
      this.playUrl,
      this.prePic,
      this.programName,
      this.screenType,
      this.typeCode,
      this.anchorId,
      this.anchorLevel,
      this.programId,
      this.userId,
      this.playInfo});

  LiveRoomBasic.fromJson(Map<String, dynamic> json) {
    this.headPic = json['headPic'];
    this.isLiving = json['isLiving'];
    this.isPcLive = json['isPcLive'];
    this.playUrl = json['playUrl'];
    this.prePic = json['prePic'];
    this.programName = json['programName'];
    this.screenType = json['screenType'];
    this.typeCode = json['typeCode'];
    this.anchorId = json['anchorId'];
    this.anchorLevel = json['anchorLevel'];
    this.programId = json['programId'];
    this.userId = json['userId'];
    this.playInfo = json['playInfo'] != null ? PlayInfoBean.fromJson(json['playInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headPic'] = this.headPic;
    data['isLiving'] = this.isLiving;
    data['isPcLive'] = this.isPcLive;
    data['playUrl'] = this.playUrl;
    data['prePic'] = this.prePic;
    data['programName'] = this.programName;
    data['screenType'] = this.screenType;
    data['typeCode'] = this.typeCode;
    data['anchorId'] = this.anchorId;
    data['anchorLevel'] = this.anchorLevel;
    data['programId'] = this.programId;
    data['userId'] = this.userId;
    if (this.playInfo != null) {
      data['playInfo'] = this.playInfo.toJson();
    }
    return data;
  }
}