import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
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
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'rotas_controller_model.dart';
export 'rotas_controller_model.dart';

class RotasControllerWidget extends StatefulWidget {
  const RotasControllerWidget({super.key});

  @override
  State<RotasControllerWidget> createState() => _RotasControllerWidgetState();
}

class _RotasControllerWidgetState extends State<RotasControllerWidget> {
  late RotasControllerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RotasControllerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Stack(
        children: [
          if (FFAppState().RotasController == RotasEnums.inicio)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: wrapWithModel(
                model: _model.inicioPageModel,
                updateCallback: () => safeSetState(() {}),
                child: InicioPageWidget(),
              ),
            ),
          if (FFAppState().RotasController == RotasEnums.Transacoes)
            wrapWithModel(
              model: _model.transacoesPageModel,
              updateCallback: () => safeSetState(() {}),
              child: TransacoesPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.Orcamentos)
            wrapWithModel(
              model: _model.orcamentosPageModel,
              updateCallback: () => safeSetState(() {}),
              child: OrcamentosPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.Metas)
            wrapWithModel(
              model: _model.metasPageModel,
              updateCallback: () => safeSetState(() {}),
              child: MetasPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.Emprestimos)
            wrapWithModel(
              model: _model.emprestimoPageModel,
              updateCallback: () => safeSetState(() {}),
              child: EmprestimoPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.Assinaturas)
            wrapWithModel(
              model: _model.assinaturasPageModel,
              updateCallback: () => safeSetState(() {}),
              child: AssinaturasPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.agendado)
            wrapWithModel(
              model: _model.agendadoPageModel,
              updateCallback: () => safeSetState(() {}),
              child: AgendadoPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.calendario)
            wrapWithModel(
              model: _model.calendarioPageModel,
              updateCallback: () => safeSetState(() {}),
              child: CalendarioPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.RegistroAtividades)
            wrapWithModel(
              model: _model.registroDeAtividadesPageModel,
              updateCallback: () => safeSetState(() {}),
              child: RegistroDeAtividadesPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.TodosOsGastos)
            wrapWithModel(
              model: _model.todosOsGastosPageModel,
              updateCallback: () => safeSetState(() {}),
              child: TodosOsGastosPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.EditContas)
            wrapWithModel(
              model: _model.editarContasPageModel,
              updateCallback: () => safeSetState(() {}),
              child: EditarContasPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.EditOrcamentos)
            wrapWithModel(
              model: _model.editarOrcamentosPageModel,
              updateCallback: () => safeSetState(() {}),
              child: EditarOrcamentosPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.EditCategorias)
            wrapWithModel(
              model: _model.editarCategoriasPageModel,
              updateCallback: () => safeSetState(() {}),
              child: EditarCategoriasPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.EditTitulos)
            wrapWithModel(
              model: _model.editarTitulosPageModel,
              updateCallback: () => safeSetState(() {}),
              child: EditarTitulosPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.EditObjetivos)
            wrapWithModel(
              model: _model.editarObjetivosPageModel,
              updateCallback: () => safeSetState(() {}),
              child: EditarObjetivosPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.Login)
            wrapWithModel(
              model: _model.loginPageModel,
              updateCallback: () => safeSetState(() {}),
              child: LoginPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.Configuracoes)
            wrapWithModel(
              model: _model.configuracoesPageModel,
              updateCallback: () => safeSetState(() {}),
              child: ConfiguracoesPageWidget(),
            ),
          if (FFAppState().RotasController == RotasEnums.Sobre)
            wrapWithModel(
              model: _model.sobrePageModel,
              updateCallback: () => safeSetState(() {}),
              child: SobrePageWidget(),
            ),
        ],
      ),
    );
  }
}
