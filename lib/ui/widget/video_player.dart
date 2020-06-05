import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:lmlive/ui/widget/image.dart';

class IjkVideoPlayer extends StatefulWidget {
  final IjkMediaController controller;
  final String coverPic;
  final VoidCallback onTap;

  IjkVideoPlayer(this.controller, this.coverPic, this.onTap);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<IjkVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return IjkPlayer(
      mediaController: widget.controller,
      controllerWidgetBuilder: _buildControllerWidget,
      textureBuilder: textureBuilder,
      statusWidgetBuilder: buildStatusWidget,
    );
  }

  Widget _buildControllerWidget(IjkMediaController controller) {
    return Builder(
      builder: (BuildContext context) {
        return Container();
      },
    );
  }

  ///后续自定义播放纹理控件用
  Widget textureBuilder(BuildContext context, IjkMediaController controller, VideoInfo videoInfo) {
    debugPrint('VideoInfo=$videoInfo');
    return DefaultIJKPlayerWrapper(controller: controller, info: videoInfo);
  }

  ///后续自定义状态控件用
  Widget buildStatusWidget(
    BuildContext context,
    IjkMediaController controller,
    IjkStatus status,
  ) {
    debugPrint("ProgramVideoState buildStatusWidget statue=$status");
    if (status != IjkStatus.playing) {
      if (status == IjkStatus.error) {
        debugPrint('ProgramVideoState 播放出错了');
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '播放出错了！',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  textColor: Colors.white,
                  borderSide: BorderSide(color: Colors.white, width: 1),
                  onPressed: widget.onTap,
                  child: Text(
                    '重试',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        );
      }
      return WrapperImage(url: widget.coverPic, height: double.infinity, width: double.infinity, fit: BoxFit.cover);
    } else {
      controller.refreshVideoInfo();
    }
    return Container();
  }
}

/// Default IJKPlayer Wrapper
///
/// This widget solves the aspect ratio problem in video direction.
class DefaultIJKPlayerWrapper extends StatelessWidget {
  final IjkMediaController controller;
  final VideoInfo info;

  const DefaultIJKPlayerWrapper({
    Key key,
    this.controller,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var id = controller.textureId;
    double ratio = info?.ratio ?? 1280 / 720;
    return Container(
      width: ScreenUtil.screenWidth,
      height: double.infinity,
//      decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(6.7)),
      child: FittedBox(
        child: Container(
          width: ScreenUtil.screenWidth,
          height: ScreenUtil.screenWidth / ratio,
          child: Texture(
            textureId: id,
          ),
        ),
        fit: BoxFit.cover,
      ),
    );
//    double ratio = info?.ratio ?? 1280 / 720;
//
//    var id = controller.textureId;
//
//    if (id == null) {
//      return AspectRatio(
//        aspectRatio: ratio,
//        child: Container(
//          color: Colors.black,
//        ),
//      );
//    }
//
//    Widget w = Container(
//      color: Colors.black,
//      child: Texture(
//        textureId: id,
//      ),
//    );
//
//    if (!controller.autoRotate) {
//      return w;
//    }
//
//    int degree = info?.degree ?? 0;
//
//    if (ratio == 0) {
//      ratio = 1280 / 720;
//    }
//
//    w = AspectRatio(
//      aspectRatio: ratio,
//      child: w,
//    );
//
//    if (degree != 0) {
//      w = RotatedBox(
//        quarterTurns: degree ~/ 90,
//        child: w,
//      );
//    }
//
//    return Container(
//      child: w,
//      alignment: Alignment.center,
//      color: Colors.black,
//    );
  }
}
