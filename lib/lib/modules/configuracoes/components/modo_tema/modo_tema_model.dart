import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modo_tema_widget.dart' show ModoTemaWidget;
import 'package:flutter/material.dart';

class ModoTemaModel extends FlutterFlowModel<ModoTemaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for DropDown widget.
  TemasEnums? dropDownValue;
  FormFieldController<TemasEnums>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
