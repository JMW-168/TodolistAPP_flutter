import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calendar_widget.dart' show CalendarWidget;
import 'package:flutter/material.dart';

class CalendarModel extends FlutterFlowModel<CalendarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // Models for task dynamic component.
  late FlutterFlowDynamicModels<TaskModel> taskModels1;
  // Models for task dynamic component.
  late FlutterFlowDynamicModels<TaskModel> taskModels2;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // Models for task dynamic component.
  late FlutterFlowDynamicModels<TaskModel> taskModels3;
  // Models for task dynamic component.
  late FlutterFlowDynamicModels<TaskModel> taskModels4;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    taskModels1 = FlutterFlowDynamicModels(() => TaskModel());
    taskModels2 = FlutterFlowDynamicModels(() => TaskModel());
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    taskModels3 = FlutterFlowDynamicModels(() => TaskModel());
    taskModels4 = FlutterFlowDynamicModels(() => TaskModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    taskModels1.dispose();
    taskModels2.dispose();
    taskModels3.dispose();
    taskModels4.dispose();
  }
}
