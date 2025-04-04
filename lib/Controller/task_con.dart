import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../Service/db_service.dart';

class TaskController extends GetxController {
  final DbService _dbService = DbService();

  Stream<QuerySnapshot> get taskStream => _dbService.getTasks();

  Future<void> addTask(String task) async {
    await _dbService.addTask(task);
  }

  Future<void> updateTask(String id, String newTask) async {
    await _dbService.updateTask(id, newTask);
  }

  Future<void> deleteTask(String id) async {
    await _dbService.deleteTask(id);
  }
}
