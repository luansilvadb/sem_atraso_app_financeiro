import 'package:collection/collection.dart';

enum TemasEnums {
  Sistema,
  Claro,
  Escuro,
}

enum RotasEnums {
  inicio,
  Transacoes,
  Orcamentos,
  Metas,
  Emprestimos,
  Assinaturas,
  agendado,
  calendario,
  RegistroAtividades,
  TodosOsGastos,
  EditContas,
  EditOrcamentos,
  EditCategorias,
  EditTitulos,
  EditObjetivos,
  Login,
  Configuracoes,
  Sobre,
}

enum IdiomaEnums {
  Portuguese,
  English,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TemasEnums):
      return TemasEnums.values.deserialize(value) as T?;
    case (RotasEnums):
      return RotasEnums.values.deserialize(value) as T?;
    case (IdiomaEnums):
      return IdiomaEnums.values.deserialize(value) as T?;
    default:
      return null;
  }
}
