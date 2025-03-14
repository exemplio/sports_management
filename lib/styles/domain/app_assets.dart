// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_assets.freezed.dart';
part 'app_assets.g.dart';

@freezed
class AppAssets with _$AppAssets {
  @JsonSerializable(
      explicitToJson: true,
      fieldRename: FieldRename.snake,
      includeIfNull: false)
  const factory AppAssets({
    required String uri,
    required String logo,
    required String logo2,
    required String logo3,
  }) = _AppAssets;

  factory AppAssets.fromJson(Map<String, Object?> json) => _$AppAssetsFromJson(json);
}