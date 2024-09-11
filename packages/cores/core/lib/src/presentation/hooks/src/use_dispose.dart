import 'use_effect_once.dart';

// StatefulWidgetの`dispose`のように利用
void useDispose(void Function() dispose) => useEffectOnce(() => dispose);
