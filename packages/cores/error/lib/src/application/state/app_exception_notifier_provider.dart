import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/app_exception.dart';

part 'app_exception_notifier_provider.g.dart';

/// 発生した例外をアプリ全体で管理するためのProvider
@Riverpod(keepAlive: true)
class AppExceptionNotifier extends _$AppExceptionNotifier {
  @override
  AppException? build() {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void notify(AppException exception) {
    state = exception;
  }

  void consume() {
    state = null;
  }
}
