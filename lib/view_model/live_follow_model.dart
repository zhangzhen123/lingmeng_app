import 'package:lmlive/beans/base/RootListData.dart';
import 'package:lmlive/beans/bean/follow.dart';
import 'package:lmlive/beans/bean/live_follow.dart';
import 'package:lmlive/net/services/program_repository.dart';
import 'package:lmlive/net/services/room_repository.dart';
import 'package:lmlive/provider/view_state.dart';
import 'package:lmlive/provider/view_state_refresh_list_model.dart';

/// 直播间中我的关注列表
class LiveFollowListModel extends ViewStateRefreshListModel<ListFollowBean> {
  int programId;

  LiveFollowListModel(this.programId);

  int dataType;

  @override
  void onError(ViewStateError viewStateError) {}

  @override
  Future<LiveFollows> loadData({int offset}) async {
    var follow = await RoomRepository.liveFollow(this.programId, offset);
    dataType = follow.dataType;
    hasRequest = true;
    return follow;
  }

  bool hasRequest = false;

  @override
  initData() {
    if (!hasRequest) super.initData();
  }
}
