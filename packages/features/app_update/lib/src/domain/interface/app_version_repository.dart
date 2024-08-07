import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:version/version.dart';

part 'app_version_repository.g.dart';

@Riverpod(keepAlive: true)
AppVersionRepository appVersionRepository(AppVersionRepositoryRef ref) =>
    throw UnimplementedError();

abstract class AppVersionRepository {
  const AppVersionRepository();
  Future<Version?> fetchLatestAppVersion();
  Future<Version?> fetchForceUpdateAppVersion();
}
