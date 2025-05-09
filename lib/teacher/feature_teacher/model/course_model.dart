import 'package:cloud_firestore/cloud_firestore.dart';

class Course {
  final String name;
  final String startTime;
  final String endTime;
  final List<String> days;
  final String description;
  final Timestamp createdAt;
  final String teacherId;

  Course({
    required this.name,
    required this.startTime,
    required this.endTime,
    required this.days,
    required this.description,
    required this.createdAt,
    required this.teacherId,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'time': time,
      'description': description,
      'createdAt': createdAt,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      name: map['name'] ?? '',
      time: map['time'] ?? '',
      description: map['description'] ?? '',
      createdAt: map['createdAt'] ?? Timestamp.now(),
      teacherId: map['teacherId'] ?? '',
    );
  }
}
