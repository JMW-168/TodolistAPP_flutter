import '/backend/backend.dart';
import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<TasksRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for task dynamic component.
  late FlutterFlowDynamicModels<TaskModel> taskModels1;
  // Models for task dynamic component.
  late FlutterFlowDynamicModels<TaskModel> taskModels2;
  // Models for task dynamic component.
  late FlutterFlowDynamicModels<TaskModel> taskModels3;

  @override
  void initState(BuildContext context) {
    taskModels1 = FlutterFlowDynamicModels(() => TaskModel());
    taskModels2 = FlutterFlowDynamicModels(() => TaskModel());
    taskModels3 = FlutterFlowDynamicModels(() => TaskModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    taskModels1.dispose();
    taskModels2.dispose();
    taskModels3.dispose();
  }
}
