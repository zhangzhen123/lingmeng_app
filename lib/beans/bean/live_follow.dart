import 'package:lmlive/beans/base/RootListData.dart';

//class LiveFollow {
//  String hasMore;
//  int dataType;
//  List<ListFollowBean> list;
//
//  LiveFollow({this.hasMore, this.dataType, this.list});
//
//  LiveFollow.fromJson(Map<String, dynamic> json) {
//    this.hasMore = json['hasMore'];
//    this.dataType = json['dataType'];
//    this.list = (json['list'] as List) != null ? (json['list'] as List).map((i) => ListFollowBean.fromJson(i)).toList() : null;
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['hasMore'] = this.hasMore;
//    data['dataType'] = this.dataType;
//    data['list'] = this.list != null ? this.list.map((i) => i.toJson()).toList() : null;
//    return data;
//  }
//}

class LiveFollows extends RootListData<ListFollowBean> {
  int dataType;

  LiveFollows.fromJson(ToBeanFun<ListFollowBean> itemToBeanFun, Map<String, dynamic> json) {
    if (itemToBeanFun != null) {
      this.list = (json['list'] as List) != null ? (json['list'] as List).map(itemToBeanFun).toList() : [];
    } else {
      this.list = (json['list'] as List) != null ? (json['list'] as List) /*.map(itemToBeanFun).toList()*/ : [];
    }

//    this.extDataJson = json['extDataJson'];
    this.hasMore = json['hasMore'];
    this.dataType = json['dataType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasMore'] = this.hasMore;
    data['dataType'] = this.dataType;
    data['list'] = this.list != null ? this.list.map((i) => i.toJson()).toList() : null;
    return data;
  }
}

class ListFollowBean {
  String coverPic;
  String programName;
  int onlineUserNum;
  int programId;

  ListFollowBean({this.coverPic, this.programName, this.onlineUserNum, this.programId});

  ListFollowBean.fromJson(Map<String, dynamic> json) {
    this.coverPic = json['coverPic'];
    this.programName = json['programName'];
    this.onlineUserNum = json['onlineUserNum'];
    this.programId = json['programId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coverPic'] = this.coverPic;
    data['programName'] = this.programName;
    data['onlineUserNum'] = this.onlineUserNum;
    data['programId'] = this.programId;
    return data;
  }
}
