import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "users_assigned" field.
  List<DocumentReference>? _usersAssigned;
  List<DocumentReference> get usersAssigned => _usersAssigned ?? const [];
  bool hasUsersAssigned() => _usersAssigned != null;

  // "Task_title" field.
  String? _taskTitle;
  String get taskTitle => _taskTitle ?? '';
  bool hasTaskTitle() => _taskTitle != null;

  // "Task_details" field.
  String? _taskDetails;
  String get taskDetails => _taskDetails ?? '';
  bool hasTaskDetails() => _taskDetails != null;

  // "Task_completed" field.
  bool? _taskCompleted;
  bool get taskCompleted => _taskCompleted ?? false;
  bool hasTaskCompleted() => _taskCompleted != null;

  // "Task_ID" field.
  int? _taskID;
  int get taskID => _taskID ?? 0;
  bool hasTaskID() => _taskID != null;

  // "Task_time_created" field.
  DateTime? _taskTimeCreated;
  DateTime? get taskTimeCreated => _taskTimeCreated;
  bool hasTaskTimeCreated() => _taskTimeCreated != null;

  // "Task_last_edited" field.
  DateTime? _taskLastEdited;
  DateTime? get taskLastEdited => _taskLastEdited;
  bool hasTaskLastEdited() => _taskLastEdited != null;

  // "Task_category" field.
  String? _taskCategory;
  String get taskCategory => _taskCategory ?? '';
  bool hasTaskCategory() => _taskCategory != null;

  // "Task_due_time" field.
  DateTime? _taskDueTime;
  DateTime? get taskDueTime => _taskDueTime;
  bool hasTaskDueTime() => _taskDueTime != null;

  // "Task_Priority" field.
  String? _taskPriority;
  String get taskPriority => _taskPriority ?? '';
  bool hasTaskPriority() => _taskPriority != null;

  void _initializeFields() {
    _usersAssigned = getDataList(snapshotData['users_assigned']);
    _taskTitle = snapshotData['Task_title'] as String?;
    _taskDetails = snapshotData['Task_details'] as String?;
    _taskCompleted = snapshotData['Task_completed'] as bool?;
    _taskID = castToType<int>(snapshotData['Task_ID']);
    _taskTimeCreated = snapshotData['Task_time_created'] as DateTime?;
    _taskLastEdited = snapshotData['Task_last_edited'] as DateTime?;
    _taskCategory = snapshotData['Task_category'] as String?;
    _taskDueTime = snapshotData['Task_due_time'] as DateTime?;
    _taskPriority = snapshotData['Task_Priority'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? taskTitle,
  String? taskDetails,
  bool? taskCompleted,
  int? taskID,
  DateTime? taskTimeCreated,
  DateTime? taskLastEdited,
  String? taskCategory,
  DateTime? taskDueTime,
  String? taskPriority,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Task_title': taskTitle,
      'Task_details': taskDetails,
      'Task_completed': taskCompleted,
      'Task_ID': taskID,
      'Task_time_created': taskTimeCreated,
      'Task_last_edited': taskLastEdited,
      'Task_category': taskCategory,
      'Task_due_time': taskDueTime,
      'Task_Priority': taskPriority,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.usersAssigned, e2?.usersAssigned) &&
        e1?.taskTitle == e2?.taskTitle &&
        e1?.taskDetails == e2?.taskDetails &&
        e1?.taskCompleted == e2?.taskCompleted &&
        e1?.taskID == e2?.taskID &&
        e1?.taskTimeCreated == e2?.taskTimeCreated &&
        e1?.taskLastEdited == e2?.taskLastEdited &&
        e1?.taskCategory == e2?.taskCategory &&
        e1?.taskDueTime == e2?.taskDueTime &&
        e1?.taskPriority == e2?.taskPriority;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.usersAssigned,
        e?.taskTitle,
        e?.taskDetails,
        e?.taskCompleted,
        e?.taskID,
        e?.taskTimeCreated,
        e?.taskLastEdited,
        e?.taskCategory,
        e?.taskDueTime,
        e?.taskPriority
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
