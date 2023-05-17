import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class Task {
  String? name;
  DateTime? time;

  Task(this.name, this.time);

  factory Task.fromJson(Map<String, Object?> jsonMap) {
    var time = DateTime.tryParse(jsonMap["time"] as String);

    return Task(jsonMap["name"] as String, time);
  }

  Map toJson() => {"name": name, "time": time.toString()};
  @override
  toString() => "Name: $name \t Time: $time";

  static void writeinfile(List<Task> list) async {
    Directory root = await getTemporaryDirectory();
    String directoryPath = root.path + '/task.json';
    final encoded = json.encode(list);
    await File(directoryPath).writeAsString(encoded);
  }

  static Future<List<Task>> readoutfile() async {
    Directory root = await getTemporaryDirectory();
    String directoryPath = root.path + '/task.json';
    final data = await File(directoryPath).readAsString();
    final decoded = json.decode(data);
    List<Task> tasks = [];
    for (final item in decoded) {
      final Task task = Task.fromJson(item);
      tasks.add(task);
    }

    return tasks;
  }
}
