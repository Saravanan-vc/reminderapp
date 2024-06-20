import 'package:json_annotation/json_annotation.dart';

part 'TaskModel.g.dart';

@JsonSerializable()
class Task {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "Task")
  String? task;

  @JsonKey(name: "Description")
  String? Description;

  @JsonKey(name: "Date")
  String? Date;

  Task({
    this.id,
    this.task,
    this.Description,
    this.Date,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
