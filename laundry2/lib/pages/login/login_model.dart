import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email-reg widget.
  TextEditingController? emailRegController;
  String? Function(BuildContext, String?)? emailRegControllerValidator;
  // State field(s) for password-reg widget.
  TextEditingController? passwordRegController;
  late bool passwordRegVisibility;
  String? Function(BuildContext, String?)? passwordRegControllerValidator;
  // State field(s) for password-con-reg widget.
  TextEditingController? passwordConRegController;
  late bool passwordConRegVisibility;
  String? Function(BuildContext, String?)? passwordConRegControllerValidator;
  // State field(s) for email-login widget.
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for password-login widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordRegVisibility = false;
    passwordConRegVisibility = false;
    passwordLoginVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailRegController?.dispose();
    passwordRegController?.dispose();
    passwordConRegController?.dispose();
    emailLoginController?.dispose();
    passwordLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
