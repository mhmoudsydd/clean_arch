import 'package:clean_architecture/config/debug/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    ('onCreate -- ${bloc.runtimeType}').warning;
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    var currentStateContainsError =
        change.currentState.toString().toLowerCase().contains('error');
    var nextStateContainsError =
        change.nextState.toString().toLowerCase().contains('error');
    var isError = nextStateContainsError || currentStateContainsError;

    if (isError) {
      var loggerMessage = 'onChange -- ${bloc.runtimeType}, $change';
      if (currentStateContainsError) {
        loggerMessage.debug;
      } else {
        loggerMessage.error;
      }
    } else {
      'onChange -- ${bloc.runtimeType}, $change'.debug;
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    ('onError -- ${bloc.runtimeType}, $error').error;
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    ('onClose -- ${bloc.runtimeType}').warning;
  }
}