import '/flutter_flow/flutter_flow_util.dart';
import 'sub_menu_widget.dart' show SubMenuWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SubMenuModel extends FlutterFlowModel<SubMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for EditContasMouseRegion widget.
  bool editContasMouseRegionHovered = false;
  // State field(s) for EditOrcamentosMouseRegion widget.
  bool editOrcamentosMouseRegionHovered = false;
  // State field(s) for EditCategoriasMouseRegion widget.
  bool editCategoriasMouseRegionHovered = false;
  // State field(s) for EditTitulosMouseRegion widget.
  bool editTitulosMouseRegionHovered = false;
  // State field(s) for EditObjetivosMouseRegion widget.
  bool editObjetivosMouseRegionHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
