import '/flutter_flow/flutter_flow_util.dart';
import '/lib/modules/configuracoes/components/cor_de_destaque/cor_de_destaque_widget.dart';
import '/lib/modules/configuracoes/components/divisor_de_contas/divisor_de_contas_widget.dart';
import '/lib/modules/configuracoes/components/editar_pagina_inicial/editar_pagina_inicial_widget.dart';
import '/lib/modules/configuracoes/components/exportar_arquivo_csv/exportar_arquivo_csv_widget.dart';
import '/lib/modules/configuracoes/components/exportar_arquivo_de_dados/exportar_arquivo_de_dados_widget.dart';
import '/lib/modules/configuracoes/components/google_drive/google_drive_widget.dart';
import '/lib/modules/configuracoes/components/idioma_dropdown/idioma_dropdown_widget.dart';
import '/lib/modules/configuracoes/components/importar_arquivo_csv/importar_arquivo_csv_widget.dart';
import '/lib/modules/configuracoes/components/importar_arquivo_de_dados/importar_arquivo_de_dados_widget.dart';
import '/lib/modules/configuracoes/components/importar_do_google_sheet/importar_do_google_sheet_widget.dart';
import '/lib/modules/configuracoes/components/mais_opcoes/mais_opcoes_widget.dart';
import '/lib/modules/configuracoes/components/material_you/material_you_widget.dart';
import '/lib/modules/configuracoes/components/modo_tema/modo_tema_widget.dart';
import 'app_configuracoes_widget.dart' show AppConfiguracoesWidget;
import 'package:flutter/material.dart';

class AppConfiguracoesModel extends FlutterFlowModel<AppConfiguracoesWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cor_de_destaque component.
  late CorDeDestaqueModel corDeDestaqueModel;
  // Model for material_you component.
  late MaterialYouModel materialYouModel;
  // Model for modo_tema component.
  late ModoTemaModel modoTemaModel;
  // Model for editar_pagina_inicial component.
  late EditarPaginaInicialModel editarPaginaInicialModel;
  // Model for idioma_dropdown component.
  late IdiomaDropdownModel idiomaDropdownModel;
  // Model for mais_opcoes component.
  late MaisOpcoesModel maisOpcoesModel;
  // Model for divisor_de_contas component.
  late DivisorDeContasModel divisorDeContasModel;
  // Model for exportar_arquivo_csv component.
  late ExportarArquivoCsvModel exportarArquivoCsvModel;
  // Model for importar_arquivo_csv component.
  late ImportarArquivoCsvModel importarArquivoCsvModel;
  // Model for importar_do_google_sheet component.
  late ImportarDoGoogleSheetModel importarDoGoogleSheetModel;
  // Model for exportar_arquivo_de_dados component.
  late ExportarArquivoDeDadosModel exportarArquivoDeDadosModel;
  // Model for importar_arquivo_de_dados component.
  late ImportarArquivoDeDadosModel importarArquivoDeDadosModel;
  // Model for google_drive component.
  late GoogleDriveModel googleDriveModel;

  @override
  void initState(BuildContext context) {
    corDeDestaqueModel = createModel(context, () => CorDeDestaqueModel());
    materialYouModel = createModel(context, () => MaterialYouModel());
    modoTemaModel = createModel(context, () => ModoTemaModel());
    editarPaginaInicialModel =
        createModel(context, () => EditarPaginaInicialModel());
    idiomaDropdownModel = createModel(context, () => IdiomaDropdownModel());
    maisOpcoesModel = createModel(context, () => MaisOpcoesModel());
    divisorDeContasModel = createModel(context, () => DivisorDeContasModel());
    exportarArquivoCsvModel =
        createModel(context, () => ExportarArquivoCsvModel());
    importarArquivoCsvModel =
        createModel(context, () => ImportarArquivoCsvModel());
    importarDoGoogleSheetModel =
        createModel(context, () => ImportarDoGoogleSheetModel());
    exportarArquivoDeDadosModel =
        createModel(context, () => ExportarArquivoDeDadosModel());
    importarArquivoDeDadosModel =
        createModel(context, () => ImportarArquivoDeDadosModel());
    googleDriveModel = createModel(context, () => GoogleDriveModel());
  }

  @override
  void dispose() {
    corDeDestaqueModel.dispose();
    materialYouModel.dispose();
    modoTemaModel.dispose();
    editarPaginaInicialModel.dispose();
    idiomaDropdownModel.dispose();
    maisOpcoesModel.dispose();
    divisorDeContasModel.dispose();
    exportarArquivoCsvModel.dispose();
    importarArquivoCsvModel.dispose();
    importarDoGoogleSheetModel.dispose();
    exportarArquivoDeDadosModel.dispose();
    importarArquivoDeDadosModel.dispose();
    googleDriveModel.dispose();
  }
}
