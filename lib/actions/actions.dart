import '/flutter_flow/flutter_flow_util.dart';
import '/lib/shared/widgets/startup_modal/startup_modal_page/startup_modal_page_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';

Future updateVersionModal(BuildContext context) async {
  FFAppState().currentVersion = FFDevEnvironmentValues().APP_VERSION;
  if (FFAppState().currentVersion != FFAppState().lastVersionSeen) {
    await action_blocks.updateVersionModal(context);
    FFAppState().lastVersionSeen = FFAppState().currentVersion;
  } else {
    FFAppState().lastVersionSeen = FFAppState().currentVersion;
  }
}

Future startupModal(BuildContext context) async {
  FFAppState().currentVersion = FFDevEnvironmentValues().APP_VERSION;
  if (FFAppState().currentVersion != FFAppState().lastVersionSeen) {
    FFAppState().lastVersionSeen = FFAppState().currentVersion;
    await showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: StartupModalPageWidget(),
        );
      },
    );
  } else {
    FFAppState().lastVersionSeen = FFAppState().currentVersion;
  }
}
