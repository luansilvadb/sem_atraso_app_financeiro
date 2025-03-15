import '/flutter_flow/flutter_flow_util.dart';
import '/lib/shared/layout/footer/footer_widget.dart';
import '/lib/shared/layout/header/header_widget.dart';
import '/lib/shared/layout/menu/menu_widget.dart';
import '/lib/shared/layout/sub_menu/sub_menu_widget.dart';
import 'package:flutter/material.dart';
import 'app_layout_model.dart';
export 'app_layout_model.dart';

class AppLayoutWidget extends StatefulWidget {
  const AppLayoutWidget({super.key});

  @override
  State<AppLayoutWidget> createState() => _AppLayoutWidgetState();
}

class _AppLayoutWidgetState extends State<AppLayoutWidget> {
  late AppLayoutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppLayoutModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      primary: false,
      scrollDirection: Axis.vertical,
      children: [
        wrapWithModel(
          model: _model.headerModel,
          updateCallback: () => safeSetState(() {}),
          child: HeaderWidget(),
        ),
        wrapWithModel(
          model: _model.menuModel,
          updateCallback: () => safeSetState(() {}),
          child: MenuWidget(),
        ),
        wrapWithModel(
          model: _model.subMenuModel,
          updateCallback: () => safeSetState(() {}),
          child: SubMenuWidget(),
        ),
        wrapWithModel(
          model: _model.footerModel,
          updateCallback: () => safeSetState(() {}),
          child: FooterWidget(),
        ),
      ],
    );
  }
}
