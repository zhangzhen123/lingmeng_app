import 'package:flutter/cupertino.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';
import 'package:lmlive/beans/base/RootListData.dart';
import 'package:lmlive/beans/bean/follow.dart';
import 'package:lmlive/beans/bean/live_room_basic.dart';
import 'package:lmlive/net/services/live_repository.dart';
import 'package:lmlive/net/services/room_repository.dart';
import 'package:lmlive/provider/view_state.dart';
import 'package:lmlive/provider/view_state_model.dart';
import 'package:lmlive/provider/view_state_simple_model.dart';
import 'package:lmlive/utils/common_utils.dart';
import 'package:lmlive/utils/ijk_options_utils.dart';

/// 直播页面model
class PlayerModel extends ViewStateModel {
  int programId;

  PlayerModel(this.programId);

  IjkMediaController ijkController;
  LiveRoomBasic liveRoomBasic;

  initBasic() async {
    setBusy();
    ijkController = IjkMediaController(autoRotate: true, needChangeSpeed: false);
    //配置播放器的默认优化参数
    OptionUtils.addDefaultOptions(ijkController);
    try {
      liveRoomBasic = await RoomRepository.enterRoomBasic(programId);

      notifyListeners();
      await ijkController.pauseOtherController();
      await ijkController.setNetworkDataSource(CommonUtils.getPlayUrl(liveRoomBasic.playInfo), autoPlay: true);
      setIdle();
    } catch (e, s) {
      setError(e, s);
    }
  }

  @override
  void dispose() {
    debugPrint('PlayerModel dispose');
    ijkController?.dispose();
    super.dispose();
  }
}
