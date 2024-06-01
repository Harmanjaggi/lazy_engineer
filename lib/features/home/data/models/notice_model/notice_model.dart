import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

@freezed
class NoticeModel with _$NoticeModel {
    const factory NoticeModel({
        String? id,
        String? userId,
        String? imageLink,
        String? link,
        String? heading,
        String? message,
        List<String>? tags,
        DateTime? startDate,
        DateTime? endDate,
        int? v,
    }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, dynamic> json) => _$NoticeModelFromJson(json);
}