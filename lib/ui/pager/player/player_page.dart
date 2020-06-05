import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lmlive/beans/bean/live_follow.dart';
import 'package:lmlive/config/resource_mananger.dart';
import 'package:lmlive/provider/provider_widget.dart';
import 'package:lmlive/provider/view_state_widget.dart';
import 'package:lmlive/res/color.dart';
import 'package:lmlive/ui/widget/image.dart';
import 'package:lmlive/ui/widget/video_player.dart';
import 'package:lmlive/view_model/live_follow_model.dart';
import 'package:lmlive/view_model/player_model.dart';
import 'package:lmlive/view_model/theme_model.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PlayerPage extends StatefulWidget {
  final int programId;

  PlayerPage({@required this.programId});

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<LiveFollowListModel>.value(value: LiveFollowListModel(widget.programId)),
        ],
        child: Scaffold(
            drawerEdgeDragWidth: 100,
            drawerScrimColor: Colors.transparent,
            endDrawer: LiveFollowWidget(),
            body: SafeArea(
              child: ProviderWidget<PlayerModel>(
                model: PlayerModel(widget.programId),
                onModelReady: (model) async {
                  await model.initBasic();
                },
                builder: (context, model, widget) {
                  debugPrint('PlayerModel builder model=${model.viewState}');
                  if (model.isBusy) {
                    return Center(
                      child: Text('加载中。。。'),
                    );
                  } else if (model.isError) {
                    return Center(
                      child: Text('出错了。。。'),
                    );
                  } else {
                    return Column(children: [
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 3 / 4,
                        child: IjkVideoPlayer(model.ijkController, model.liveRoomBasic.prePic, () {
                          //todo
                        }),
                      ),
                    ]);
                  }
                },
              ),
            )));
  }

  @override
  void dispose() {
    super.dispose();
  }
}

///侧滑关注页面
class LiveFollowWidget extends StatefulWidget {
//  LiveFollowWidget(this.model);
//
//  final LiveFollowListModel model;

  @override
  _LiveFollowWidgetState createState() => _LiveFollowWidgetState();
}

class _LiveFollowWidgetState extends State<LiveFollowWidget> {
  LiveFollowListModel model;

  @override
  void initState() {
    debugPrint('initState');
//    model = widget.model;
//    model.initData();

//    Future.delayed(Duration.zero, () {
//      model = Provider.of<LiveFollowListModel>(context).initData();
//      model.initData();
//    });
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      Provider.of<LiveFollowListModel>(context, listen: false).initData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xB3000000),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Consumer<LiveFollowListModel>(builder: (context, model, child) {
        debugPrint('LiveFollowWidget builder model=${model.viewState}');
        if (model.isBusy) {
          return ViewStateBusyWidget();
        } else if (model.isEmpty) {
          return ViewStateEmptyWidget(onPressed: model.initData);
        }
        return Column(
          children: <Widget>[
            SizedBox(
              height: ScreenUtil.statusBarHeight,
            ),
            model.dataType == 0
                ? Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    height: 24,
                    width: double.infinity,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xffffd630), Color(0xffff9e30)])),
                    child: Text(
                      '关注主播',
                      style: TextStyle(fontSize: 14),
                    ))
                : Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    height: 24,
                    width: double.infinity,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff9A7FFF), Color(0xff7533FF)])),
                    child: Text('推荐主播', style: TextStyle(fontSize: 14))),
            Expanded(
              child: SmartRefresher(
                controller: model.refreshController,
                onRefresh: () async {
                  await model.refresh();
                },
                onLoading: () async {
                  await model.loadMore();
                },
                child: ListView.builder(
                    itemCount: model.list.length,
                    itemBuilder: (BuildContext context, int index) {
                      ListFollowBean item = model.list[index];
                      return Container(
                        margin: EdgeInsets.only(left: 10, top: 8, right: 10),
                        height: 130,
                        width: 130,
                        child: Stack(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: WrapperImage(url: item.coverPic, height: 130, width: 130, fit: BoxFit.cover)),
                          Positioned(
                            bottom: 0,
                            child: Image.asset(
                              ImageHelper.wrapAssets('shadow_home_item.png'),
                              width: 130,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                              bottom: 5,
                              left: 5,
                              child: Text(
                                '${item.programName}',
                                style: TextStyle(fontSize: 14, color: Colors.white),
                              )),
                          Positioned(
                              bottom: 6,
                              right: 5,
                              child: Offstage(
                                offstage: item.onlineUserNum == 0,
                                child: Text(
                                  '${item.onlineUserNum}',
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              )),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Container(
                              decoration: BoxDecoration(color: LmColors.theme_color, borderRadius: BorderRadius.circular(12)),
                              height: 13,
                              width: 20,
                              child: Image.asset(
                                ImageHelper.wrapAssets("lm_common_gif_isliving.gif"),
                                height: 11,
                                width: 12,
                              ),
                            ),
                          )
                        ]),
                      );
                    }),
              ),
            ),
          ],
        );
      }),
    );
  }
}
