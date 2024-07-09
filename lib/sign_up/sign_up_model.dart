import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SignUpEmail widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailTextController;
  String? Function(BuildContext, String?)? signUpEmailTextControllerValidator;
  // State field(s) for SingUpPassword widget.
  FocusNode? singUpPasswordFocusNode;
  TextEditingController? singUpPasswordTextController;
  late bool singUpPasswordVisibility;
  String? Function(BuildContext, String?)?
      singUpPasswordTextControllerValidator;
  // State field(s) for SignUpPasswordConfirm widget.
  FocusNode? signUpPasswordConfirmFocusNode;
  TextEditingController? signUpPasswordConfirmTextController;
  late bool signUpPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      signUpPasswordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    singUpPasswordVisibility = false;
    signUpPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signUpEmailFocusNode?.dispose();
    signUpEmailTextController?.dispose();

    singUpPasswordFocusNode?.dispose();
    singUpPasswordTextController?.dispose();

    signUpPasswordConfirmFocusNode?.dispose();
    signUpPasswordConfirmTextController?.dispose();
  }
}
