// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TaskModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as String?,
      task: json['Task'] as String?,
      Description: json['Description'] as String?,
      Date: json['Date'] as String?,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'Task': instance.task,
      'Description': instance.Description,
      'Date': instance.Date,
    };
