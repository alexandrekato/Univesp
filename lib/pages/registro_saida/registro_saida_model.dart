import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registro_saida_widget.dart' show RegistroSaidaWidget;
import 'package:flutter/material.dart';

class RegistroSaidaModel extends FlutterFlowModel<RegistroSaidaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Tombamento widget.
  String? tombamentoValue;
  FormFieldController<String>? tombamentoValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for DropDownRGF widget.
  String? dropDownRGFValue;
  FormFieldController<String>? dropDownRGFValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
