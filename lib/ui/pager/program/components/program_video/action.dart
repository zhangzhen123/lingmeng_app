import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProgramVideoAction { action, replay }

class ProgramVideoActionCreator {
  static Action onAction() {
    return const Action(ProgramVideoAction.action);
  }

  static Action onReplay() {
    return const Action(ProgramVideoAction.replay);
  }
}
