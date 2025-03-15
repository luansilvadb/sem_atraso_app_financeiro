import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'idioma_dropdown_widget.dart' show IdiomaDropdownWidget;
import 'package:flutter/material.dart';

class IdiomaDropdownModel extends FlutterFlowModel<IdiomaDropdownWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for DropDown widget.
  IdiomaEnums? dropDownValue;
  FormFieldController<IdiomaEnums>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
