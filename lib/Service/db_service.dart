import 'package:cloud_firestore/cloud_firestore.dart';

class DbService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getTasks() {
    return _db.collection('tasks').orderBy('timestamp', descending: true).snapshots();
  }

  Future<void> addTask(String task) async {
    await _db.collection('tasks').add({
      'task': task,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateTask(String id, String newTask) async {
    await _db.collection('tasks').doc(id).update({
      'task': newTask,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteTask(String id) async {
    await _db.collection('tasks').doc(id).delete();
  }
}