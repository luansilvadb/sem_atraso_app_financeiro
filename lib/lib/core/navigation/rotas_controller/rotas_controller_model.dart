import '/flutter_flow/flutter_flow_util.dart';
import '/lib/modules/agendados/agendado_page/agendado_page_widget.dart';
import '/lib/modules/assinaturas/assinaturas_page/assinaturas_page_widget.dart';
import '/lib/modules/calendarios/calendario_page/calendario_page_widget.dart';
import '/lib/modules/configuracoes/components/presentation/configuracoes_page/configuracoes_page_widget.dart';
import '/lib/modules/edit_categorias/presentation/editar_categorias_page/editar_categorias_page_widget.dart';
import '/lib/modules/edit_contas/editar_contas_page/editar_contas_page_widget.dart';
import '/lib/modules/edit_objetivos/editar_objetivos_page/editar_objetivos_page_widget.dart';
import '/lib/modules/edit_orcamentos/editar_orcamentos_page/editar_orcamentos_page_widget.dart';
import '/lib/modules/edit_titulos/editar_titulos_page/editar_titulos_page_widget.dart';
import '/lib/modules/emprestimos/emprestimo_page/emprestimo_page_widget.dart';
import '/lib/modules/inicio/inicio_page/inicio_page_widget.dart';
import '/lib/modules/login/login_page/login_page_widget.dart';
import '/lib/modules/metas/metas_page/metas_page_widget.dart';
import '/lib/modules/orcamentos/orcamentos_page/orcamentos_page_widget.dart';
import '/lib/modules/registro_de_atividades/registro_de_atividades_page/registro_de_atividades_page_widget.dart';
import '/lib/modules/sobre/presentation/sobre_page/sobre_page_widget.dart';
import '/lib/modules/todos_os_gastos/todos_os_gastos_page/todos_os_gastos_page_widget.dart';
import '/lib/modules/transacoes/transacoes_page/transacoes_page_widget.dart';
import 'rotas_controller_widget.dart' show RotasControllerWidget;
import 'package:flutter/material.dart';

class RotasControllerModel extends FlutterFlowModel<RotasControllerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for inicio_page component.
  late InicioPageModel inicioPageModel;
  // Model for transacoes_page component.
  late TransacoesPageModel transacoesPageModel;
  // Model for orcamentos_page component.
  late OrcamentosPageModel orcamentosPageModel;
  // Model for metas_page component.
  late MetasPageModel metasPageModel;
  // Model for emprestimo_page component.
  late EmprestimoPageModel emprestimoPageModel;
  // Model for assinaturas_page component.
  late AssinaturasPageModel assinaturasPageModel;
  // Model for agendado_page component.
  late AgendadoPageModel agendadoPageModel;
  // Model for calendario_page component.
  late CalendarioPageModel calendarioPageModel;
  // Model for registro_de_atividades_page component.
  late RegistroDeAtividadesPageModel registroDeAtividadesPageModel;
  // Model for todos_os_gastos_page component.
  late TodosOsGastosPageModel todosOsGastosPageModel;
  // Model for editar_contas_page component.
  late EditarContasPageModel editarContasPageModel;
  // Model for editar_orcamentos_page component.
  late EditarOrcamentosPageModel editarOrcamentosPageModel;
  // Model for editar_categorias_page component.
  late EditarCategoriasPageModel editarCategoriasPageModel;
  // Model for editar_titulos_page component.
  late EditarTitulosPageModel editarTitulosPageModel;
  // Model for editar_objetivos_page component.
  late EditarObjetivosPageModel editarObjetivosPageModel;
  // Model for login_page.
  late LoginPageModel loginPageModel;
  // Model for configuracoes_page component.
  late ConfiguracoesPageModel configuracoesPageModel;
  // Model for sobre_page component.
  late SobrePageModel sobrePageModel;

  @override
  void initState(BuildContext context) {
    inicioPageModel = createModel(context, () => InicioPageModel());
    transacoesPageModel = createModel(context, () => TransacoesPageModel());
    orcamentosPageModel = createModel(context, () => OrcamentosPageModel());
    metasPageModel = createModel(context, () => MetasPageModel());
    emprestimoPageModel = createModel(context, () => EmprestimoPageModel());
    assinaturasPageModel = createModel(context, () => AssinaturasPageModel());
    agendadoPageModel = createModel(context, () => AgendadoPageModel());
    calendarioPageModel = createModel(context, () => CalendarioPageModel());
    registroDeAtividadesPageModel =
        createModel(context, () => RegistroDeAtividadesPageModel());
    todosOsGastosPageModel =
        createModel(context, () => TodosOsGastosPageModel());
    editarContasPageModel = createModel(context, () => EditarContasPageModel());
    editarOrcamentosPageModel =
        createModel(context, () => EditarOrcamentosPageModel());
    editarCategoriasPageModel =
        createModel(context, () => EditarCategoriasPageModel());
    editarTitulosPageModel =
        createModel(context, () => EditarTitulosPageModel());
    editarObjetivosPageModel =
        createModel(context, () => EditarObjetivosPageModel());
    loginPageModel = createModel(context, () => LoginPageModel());
    configuracoesPageModel =
        createModel(context, () => ConfiguracoesPageModel());
    sobrePageModel = createModel(context, () => SobrePageModel());
  }

  @override
  void dispose() {
    inicioPageModel.dispose();
    transacoesPageModel.dispose();
    orcamentosPageModel.dispose();
    metasPageModel.dispose();
    emprestimoPageModel.dispose();
    assinaturasPageModel.dispose();
    agendadoPageModel.dispose();
    calendarioPageModel.dispose();
    registroDeAtividadesPageModel.dispose();
    todosOsGastosPageModel.dispose();
    editarContasPageModel.dispose();
    editarOrcamentosPageModel.dispose();
    editarCategoriasPageModel.dispose();
    editarTitulosPageModel.dispose();
    editarObjetivosPageModel.dispose();
    loginPageModel.dispose();
    configuracoesPageModel.dispose();
    sobrePageModel.dispose();
  }
}
