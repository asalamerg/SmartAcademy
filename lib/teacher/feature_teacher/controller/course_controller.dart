import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smart_academy/teacher/feature_teacher/model/course_model.dart';
import './../model/course_model.dart';

class CourseController {
  final _collection = FirebaseFirestore.instance.collection('courses');

  Future<void> addCourse(Course course) async {
    await _collection.add(course.toMap());
  }

  Stream<List<Course>> getCourses() {
    return _collection.orderBy('createdAt', descending: true).snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) => Course.fromMap(doc.data() as Map<String, dynamic>))
            .toList());
  }
}
