import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/config.dart';

part 'firebase_functions_provider.g.dart';

/// Firebase Functions
/// テスト時にDIすることを考慮して、Providerとして定義
@riverpod
FirebaseFunctions firebaseFunctions(Ref ref) =>
    FirebaseFunctions.instanceFor(region: firebaseRegion);
