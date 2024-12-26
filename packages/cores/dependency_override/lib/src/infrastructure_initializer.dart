import 'package:cores_domain/core.dart';
import 'package:infrastructure_firebase/common.dart';

final class InfrastructureInitializer {
  InfrastructureInitializer._();

  static Future<void> initialize(Flavor flavor) async {
    // Firebase
    await FirebaseInitializer.initialize(flavor);
  }
}
