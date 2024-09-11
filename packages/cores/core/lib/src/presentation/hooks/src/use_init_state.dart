import 'use_effect_once.dart';

/// StatefulWidgetの`initState`のように利用
void useInitState(void Function() initState) => useEffectOnce(() {
      initState();
      return null;
    });
