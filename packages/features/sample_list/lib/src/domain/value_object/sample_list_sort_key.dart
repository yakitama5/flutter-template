import 'package:features_sample_list/i18n/strings.g.dart';

enum SampleListSortKey {
  createdAt,
  name,
  price,
}

extension SampleListSortKeyX on SampleListSortKey {
  String get title => i18n.sampleList.sampleListSortKey(context: this);
}
