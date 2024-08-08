import 'package:features_sample_list/src/domain/interface/sample_list_repository.dart';
import 'package:features_sample_list/src/infrastructure/fake/fake_sample_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Returns list of [Override] that should be applied to root [ProviderScope].
Future<List<Override>> initializeSampleListProviders() async {
  return <Override>[
    sampleListRepositoryProvider.overrideWith(FakeSampleListRepository.new),
  ];
}
