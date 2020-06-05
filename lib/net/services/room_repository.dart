import 'package:flutter/cupertino.dart';
import 'package:lmlive/beans/bean/live_follow.dart';
import 'package:lmlive/beans/bean/live_room_basic.dart';
import 'package:lmlive/beans/bean/treasure_box_info.dart';
import 'package:lmlive/beans/bean/tresure_box_award.dart';
import 'package:lmlive/beans/bean/user_more_action.dart';

import '../lm_api.dart';

class RoomRepository {
  /// 进入直播间基本信息
  static Future<LiveRoomBasic> enterRoomBasic(int programId) async {
    debugPrint('http.post enterRoom basic ');
    var response = await http.post('live/room/info/basic', data: {"programId": programId});
    return LiveRoomBasic.fromJson(response.data);
  }

  ///直播间关注列表
  static Future<LiveFollows> liveFollow(int programId, int offset) async {
    debugPrint('http.post enterRoom basic ');
    var response = await http.post('live/program/info/followLivingList', data: {"programId": programId, "offset": offset});
    return LiveFollows.fromJson((item) {
      return ListFollowBean.fromJson(item);
    }, response.data);
  }

  /// 进入直播间
  static Future<UserMoreAction> enterRoom(int programId) async {
    debugPrint('http.post enterRoom ');
//    var response = await http.post('live/room/interact/menuInfo', data: {"programId": programId});
//    return UserMoreAction.fromJson(response.data);
  }
}
