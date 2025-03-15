import '/flutter_flow/flutter_flow_util.dart';
import '/lib/shared/layout/footer/footer_widget.dart';
import '/lib/shared/layout/header/header_widget.dart';
import '/lib/shared/layout/menu/menu_widget.dart';
import '/lib/shared/layout/sub_menu/sub_menu_widget.dart';
import 'app_layout_widget.dart' show AppLayoutWidget;
import 'package:flutter/material.dart';

class AppLayoutModel extends FlutterFlowModel<AppLayoutWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for sub_menu component.
  late SubMenuModel subMenuModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    subMenuModel = createModel(context, () => SubMenuModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    subMenuModel.dispose();
    footerModel.dispose();
  }
}
