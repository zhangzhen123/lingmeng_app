// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get appName {
    return Intl.message(
      'Fun Android',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  String get actionConfirm {
    return Intl.message(
      'Confirm',
      name: 'actionConfirm',
      desc: '',
      args: [],
    );
  }

  String get actionCancel {
    return Intl.message(
      'Cancel',
      name: 'actionCancel',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageError {
    return Intl.message(
      'Load Failed',
      name: 'viewStateMessageError',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageNetworkError {
    return Intl.message(
      'Load Failed,Check network ',
      name: 'viewStateMessageNetworkError',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageEmpty {
    return Intl.message(
      'Nothing Found',
      name: 'viewStateMessageEmpty',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageUnAuth {
    return Intl.message(
      'Not sign in yet',
      name: 'viewStateMessageUnAuth',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonRefresh {
    return Intl.message(
      'Refresh',
      name: 'viewStateButtonRefresh',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonRetry {
    return Intl.message(
      'Retry',
      name: 'viewStateButtonRetry',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonLogin {
    return Intl.message(
      'Sign In',
      name: 'viewStateButtonLogin',
      desc: '',
      args: [],
    );
  }

  String get refreshTwoLevel {
    return Intl.message(
      'release to enter second floor',
      name: 'refreshTwoLevel',
      desc: '',
      args: [],
    );
  }

  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  String get splashSkip {
    return Intl.message(
      'Skip',
      name: 'splashSkip',
      desc: '',
      args: [],
    );
  }

  String get tabHome {
    return Intl.message(
      'Home',
      name: 'tabHome',
      desc: '',
      args: [],
    );
  }

  String get tabProject {
    return Intl.message(
      'Project',
      name: 'tabProject',
      desc: '',
      args: [],
    );
  }

  String get tabStructure {
    return Intl.message(
      'Structure',
      name: 'tabStructure',
      desc: '',
      args: [],
    );
  }

  String get tabUser {
    return Intl.message(
      'Me',
      name: 'tabUser',
      desc: '',
      args: [],
    );
  }

  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  String get settingLanguage {
    return Intl.message(
      'Language',
      name: 'settingLanguage',
      desc: '',
      args: [],
    );
  }

  String get settingFont {
    return Intl.message(
      'System Font',
      name: 'settingFont',
      desc: '',
      args: [],
    );
  }

  String get logout {
    return Intl.message(
      'Sign Out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  String get favourites {
    return Intl.message(
      'Favorites',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  String get feedback {
    return Intl.message(
      'FeedBack',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  String get githubIssue {
    return Intl.message(
      'Can\'t find mail app,please github issues',
      name: 'githubIssue',
      desc: '',
      args: [],
    );
  }

  String get autoBySystem {
    return Intl.message(
      'Auto',
      name: 'autoBySystem',
      desc: '',
      args: [],
    );
  }

  String get fontKuaiLe {
    return Intl.message(
      'ZCOOL KuaiLe',
      name: 'fontKuaiLe',
      desc: '',
      args: [],
    );
  }

  String get fieldNotNull {
    return Intl.message(
      'not empty',
      name: 'fieldNotNull',
      desc: '',
      args: [],
    );
  }

  String get userName {
    return Intl.message(
      'Username',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  String get toSignUp {
    return Intl.message(
      'Sign Up',
      name: 'toSignUp',
      desc: '',
      args: [],
    );
  }

  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  String get rePassword {
    return Intl.message(
      'Confirm Password',
      name: 'rePassword',
      desc: '',
      args: [],
    );
  }

  String get twoPwdDifferent {
    return Intl.message(
      'The two passwords differ',
      name: 'twoPwdDifferent',
      desc: '',
      args: [],
    );
  }

  String get toSignIn {
    return Intl.message(
      'Sign In',
      name: 'toSignIn',
      desc: '',
      args: [],
    );
  }

  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  String get noAccount {
    return Intl.message(
      'No Account ? ',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  String get myFavourites {
    return Intl.message(
      'My favourites',
      name: 'myFavourites',
      desc: '',
      args: [],
    );
  }

  String get signIn3thd {
    return Intl.message(
      'More',
      name: 'signIn3thd',
      desc: '',
      args: [],
    );
  }

  String get searchHot {
    return Intl.message(
      'Hot',
      name: 'searchHot',
      desc: '',
      args: [],
    );
  }

  String get searchShake {
    return Intl.message(
      'Shake',
      name: 'searchShake',
      desc: '',
      args: [],
    );
  }

  String get searchHistory {
    return Intl.message(
      'History',
      name: 'searchHistory',
      desc: '',
      args: [],
    );
  }

  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  String get unLike {
    return Intl.message(
      'UnLike',
      name: 'unLike',
      desc: '',
      args: [],
    );
  }

  String get Like {
    return Intl.message(
      'Like',
      name: 'Like',
      desc: '',
      args: [],
    );
  }

  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  String get wechatAccount {
    return Intl.message(
      'Wechat',
      name: 'wechatAccount',
      desc: '',
      args: [],
    );
  }

  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  String get needLogin {
    return Intl.message(
      'Go to Sign In',
      name: 'needLogin',
      desc: '',
      args: [],
    );
  }

  String get loadFailed {
    return Intl.message(
      'Load failed,retry later',
      name: 'loadFailed',
      desc: '',
      args: [],
    );
  }

  String get collectionRemove {
    return Intl.message(
      'Remove',
      name: 'collectionRemove',
      desc: '',
      args: [],
    );
  }

  String get article_tag_top {
    return Intl.message(
      'Top',
      name: 'article_tag_top',
      desc: '',
      args: [],
    );
  }

  String get openBrowser {
    return Intl.message(
      'Open Browser',
      name: 'openBrowser',
      desc: '',
      args: [],
    );
  }

  String get coin {
    return Intl.message(
      'Coin',
      name: 'coin',
      desc: '',
      args: [],
    );
  }

  String get appUpdateCheckUpdate {
    return Intl.message(
      'Check Update',
      name: 'appUpdateCheckUpdate',
      desc: '',
      args: [],
    );
  }

  String get appUpdateActionUpdate {
    return Intl.message(
      'Update',
      name: 'appUpdateActionUpdate',
      desc: '',
      args: [],
    );
  }

  String get appUpdateLeastVersion {
    return Intl.message(
      'Least version now ',
      name: 'appUpdateLeastVersion',
      desc: '',
      args: [],
    );
  }

  String get appUpdateDownloading {
    return Intl.message(
      'Downloading...',
      name: 'appUpdateDownloading',
      desc: '',
      args: [],
    );
  }

  String get appUpdateDownloadFailed {
    return Intl.message(
      'Download failed',
      name: 'appUpdateDownloadFailed',
      desc: '',
      args: [],
    );
  }

  String get appUpdateReDownloadContent {
    return Intl.message(
      'It has been detected that it has been downloaded, whether it is installed?',
      name: 'appUpdateReDownloadContent',
      desc: '',
      args: [],
    );
  }

  String get appUpdateActionDownloadAgain {
    return Intl.message(
      'Download',
      name: 'appUpdateActionDownloadAgain',
      desc: '',
      args: [],
    );
  }

  String get appUpdateActionInstallApk {
    return Intl.message(
      'Install',
      name: 'appUpdateActionInstallApk',
      desc: '',
      args: [],
    );
  }

  String get appUpdateUpdate {
    return Intl.message(
      'Version Update',
      name: 'appUpdateUpdate',
      desc: '',
      args: [],
    );
  }

  String appUpdateFoundNewVersion(Object version) {
    return Intl.message(
      'New version $version',
      name: 'appUpdateFoundNewVersion',
      desc: '',
      args: [version],
    );
  }

  String get appUpdateDownloadCanceled {
    return Intl.message(
      'Download canceled',
      name: 'appUpdateDownloadCanceled',
      desc: '',
      args: [],
    );
  }

  String get appUpdateDoubleBackTips {
    return Intl.message(
      'Press back again, cancel download',
      name: 'appUpdateDoubleBackTips',
      desc: '',
      args: [],
    );
  }

  String get myWallet {
    return Intl.message(
      'MyWallet',
      name: 'myWallet',
      desc: '',
      args: [],
    );
  }

  String get user_dynamic {
    return Intl.message(
      'MyVideo/Dynamic',
      name: 'user_dynamic',
      desc: '',
      args: [],
    );
  }

  String get user_cards {
    return Intl.message(
      'MyCard',
      name: 'user_cards',
      desc: '',
      args: [],
    );
  }

  String get user_level {
    return Intl.message(
      'MyLevel',
      name: 'user_level',
      desc: '',
      args: [],
    );
  }

  String get user_welfare_center {
    return Intl.message(
      'WelfareCenter',
      name: 'user_welfare_center',
      desc: '',
      args: [],
    );
  }

  String get help_affiche {
    return Intl.message(
      'HelpAffiche',
      name: 'help_affiche',
      desc: '',
      args: [],
    );
  }

  String get user_about_us {
    return Intl.message(
      'AboutUs',
      name: 'user_about_us',
      desc: '',
      args: [],
    );
  }

  String get user_royal {
    return Intl.message(
      'UserRoyal',
      name: 'user_royal',
      desc: '',
      args: [],
    );
  }

  String get treasure_box_title01 {
    return Intl.message(
      '时间越长，奖励越好。礼物、弹幕卡、座驾等你领。',
      name: 'treasure_box_title01',
      desc: '',
      args: [],
    );
  }

  String get follow {
    return Intl.message(
      '关注',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  String get open_push_title {
    return Intl.message(
      '开启主播提醒，主播消息不再错过。',
      name: 'open_push_title',
      desc: '',
      args: [],
    );
  }

  String get open_push_close_notice {
    return Intl.message(
      '通知权限关闭，主播开播可能通知不到你哦～',
      name: 'open_push_close_notice',
      desc: '',
      args: [],
    );
  }

  String get open_push_guide {
    return Intl.message(
      '请到“设置”-“通知”中，找到“羚萌直播”进行设置',
      name: 'open_push_guide',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}