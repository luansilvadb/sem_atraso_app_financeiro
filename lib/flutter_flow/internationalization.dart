import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // main
  {
    'rfj2ukv1': {
      'pt': 'Início',
      'en': 'Home',
    },
  },
  // error_page
  {
    '5up5gvo8': {
      'pt': 'Page Not Found',
      'en': '',
    },
    '4efp4qni': {
      'pt': 'Oops! The page you\'re looking for seems to have wandered off.',
      'en': '',
    },
    'xg93fdt3': {
      'pt': 'Return Home',
      'en': '',
    },
  },
  // sub_menu
  {
    'cp1ohlqv': {
      'pt': 'Editar dados',
      'en': 'Edit data',
    },
    '5ogkupex': {
      'pt': 'Contas',
      'en': 'Accounts',
    },
    'l1l7zajn': {
      'pt': 'Orçamentos',
      'en': 'Budgets',
    },
    'k33vbs5l': {
      'pt': 'Categorias',
      'en': 'Categories',
    },
    'k9lgyota': {
      'pt': 'Títulos',
      'en': 'Titles',
    },
    '05bt4wet': {
      'pt': 'Objetivos',
      'en': 'Goals',
    },
  },
  // menu
  {
    'c0ouzox6': {
      'pt': 'Início',
      'en': 'Home',
    },
    'w2ezp5y9': {
      'pt': 'Transações',
      'en': 'Transactions',
    },
    'vbdmwea2': {
      'pt': 'Orçamentos',
      'en': 'Budgets',
    },
    '66abmjei': {
      'pt': 'Metas',
      'en': 'Goals',
    },
    'ay03l0on': {
      'pt': 'Empréstimos',
      'en': 'Loans',
    },
    'xznpgxba': {
      'pt': 'Assinaturas',
      'en': 'Subscriptions',
    },
    'jp8p4p6q': {
      'pt': 'Agendado',
      'en': 'Scheduled',
    },
    '0n7le8xn': {
      'pt': 'Calendário',
      'en': 'Calendar',
    },
    'osfztw1e': {
      'pt': 'Registro de atividades',
      'en': 'Activity log',
    },
    'wtz0hku7': {
      'pt': 'Todos os gastos',
      'en': 'All Spending',
    },
  },
  // footer
  {
    'lfvo2h5x': {
      'pt': 'Conecte-se',
      'en': 'Login',
    },
    'rofcjoaw': {
      'pt': 'Configurações',
      'en': 'Settings',
    },
    'uu6xfutz': {
      'pt': 'Sobre',
      'en': 'About',
    },
  },
  // app_configuracoes
  {
    'fillncw0': {
      'pt': 'Tema',
      'en': 'Theme',
    },
    'xdlpode0': {
      'pt': 'Preferências',
      'en': 'Preferences',
    },
    'rxxn3bya': {
      'pt': 'Ferramentas e extras',
      'en': 'Tools and Extras',
    },
    'ozafj8eu': {
      'pt': 'Importar e exportar',
      'en': 'Import and Export',
    },
    '2axik5pc': {
      'pt': 'Backups',
      'en': 'Backups',
    },
  },
  // lbl_titulos
  {
    '2xph9g5e': {
      'pt': 'Início',
      'en': 'Home',
    },
    'aw5a6csx': {
      'pt': 'Transações',
      'en': 'Transactions',
    },
    'g04e60ic': {
      'pt': 'Orçamentos',
      'en': 'Budgets',
    },
    '8j922ou1': {
      'pt': 'Metas',
      'en': 'Goals',
    },
    'ucmhzhhy': {
      'pt': 'Emprestimos',
      'en': 'Loans',
    },
    '6m5gs4d3': {
      'pt': 'Assinaturas',
      'en': 'Subscriptions',
    },
    '9oukq4c5': {
      'pt': 'Agendado',
      'en': 'Scheduled',
    },
    'q0xxnfvv': {
      'pt': 'Calendário',
      'en': 'Calendar',
    },
    'ceyeq1be': {
      'pt': 'Registro de atividades',
      'en': 'Activity Log',
    },
    'bkiegzhw': {
      'pt': 'Todos os gastos',
      'en': 'All Expenses',
    },
    'zxxjzb65': {
      'pt': 'Contas',
      'en': 'Accounts',
    },
    '2jr6n3t4': {
      'pt': 'Orçamentos',
      'en': 'Budgets',
    },
    'wrhfhjli': {
      'pt': 'Categorias',
      'en': 'Categories',
    },
    'edv7y0es': {
      'pt': 'Títulos',
      'en': 'Titles',
    },
    'ivbelqc4': {
      'pt': 'Metas',
      'en': 'Goals',
    },
    'ezbeb5q0': {
      'pt': 'Backup de dados',
      'en': 'Backups',
    },
    'xgx28nuf': {
      'pt': 'Configurações',
      'en': 'Settings',
    },
    'qjnyss3w': {
      'pt': 'Sobre',
      'en': 'About',
    },
  },
  // cor_de_destaque
  {
    '9zl3v2o2': {
      'pt': 'Cor de destaque',
      'en': 'Highlight Color',
    },
    'c2nlr3ke': {
      'pt': 'Selecione um tema de cor para a interface',
      'en': 'Select a color theme for the interface',
    },
    'ksvq3ks2': {
      'pt': '',
      'en': '',
    },
  },
  // material_you
  {
    'd1hizgph': {
      'pt': 'Material You',
      'en': 'Material You',
    },
    'nmzqqtyk': {
      'pt': '',
      'en': '',
    },
  },
  // modo_tema
  {
    'popflkyw': {
      'pt': 'Modo de tema',
      'en': 'Theme mode',
    },
    'wd5f5rbe': {
      'pt': 'Pesquisar...',
      'en': 'Search...',
    },
    '9jmm4ocq': {
      'pt': 'Sistema',
      'en': 'System',
    },
    '2ig1w6on': {
      'pt': 'Claro',
      'en': 'Light',
    },
    're4x17t5': {
      'pt': 'Escuro',
      'en': 'Dark',
    },
  },
  // editar_pagina_inicial
  {
    'i5lz4l3d': {
      'pt': 'Editar página inicial',
      'en': 'Edit Home Page',
    },
    'p0v4yunu': {
      'pt': '',
      'en': '',
    },
  },
  // idioma_dropdown
  {
    '7vfd5t6h': {
      'pt': 'Idioma',
      'en': 'Language',
    },
    'fbv7v6q8': {
      'pt': 'Pesquisar',
      'en': 'Search...',
    },
    'raw4b2fd': {
      'pt': 'Português',
      'en': 'Portuguese',
    },
    '8tif2581': {
      'pt': 'Inglês',
      'en': 'English',
    },
    'oddgsoom': {
      'pt': '',
      'en': '',
    },
  },
  // mais_opcoes
  {
    '11dnmmdq': {
      'pt': 'Mais opções',
      'en': 'More Options',
    },
    '93x7rtt7': {
      'pt': 'Estilo, transações, contas, formatos',
      'en': 'Style, Transactions, Accounts, Formats',
    },
    'i2kw369q': {
      'pt': '',
      'en': '',
    },
  },
  // divisor_de_contas
  {
    'zowxyyl8': {
      'pt': 'Divisor de Contas',
      'en': 'Bill Splitter',
    },
    'g8lp75ij': {
      'pt': 'Divida a conta de forma rápida e fácil',
      'en': 'Split the bill quickly and easily',
    },
    '8jsup7k1': {
      'pt': '',
      'en': '',
    },
  },
  // exportar_arquivo_csv
  {
    'yoeu5r8o': {
      'pt': 'Exportar arquivo CSV',
      'en': 'Export CSV File',
    },
    'zsjgc1yr': {
      'pt': '',
      'en': '',
    },
  },
  // importar_arquivo_csv
  {
    'ss5xxvdp': {
      'pt': 'Importar arquivo CSV',
      'en': 'Import from Google Sheets',
    },
    '7p5nqyo6': {
      'pt': '',
      'en': '',
    },
    'xl62op6o': {
      'pt': 'Modelo',
      'en': 'Template',
    },
  },
  // importar_do_google_sheet
  {
    'niuq3ed6': {
      'pt': 'Importar do Google Sheet',
      'en': 'Import from Google Sheets',
    },
    'ldiohhqh': {
      'pt': '',
      'en': '',
    },
    '71ocgx0a': {
      'pt': 'Modelo',
      'en': 'Template',
    },
  },
  // exportar_arquivo_de_dados
  {
    '5i218gpz': {
      'pt': 'Exportar arquivo de dados',
      'en': 'Export Data File',
    },
    '37t0gna2': {
      'pt': '',
      'en': '',
    },
  },
  // importar_arquivo_de_dados
  {
    '8w780cvq': {
      'pt': 'Importar arquivo de dados',
      'en': 'Import Data File',
    },
    'dekhr9af': {
      'pt': '',
      'en': '',
    },
  },
  // google_drive
  {
    'v04lizj0': {
      'pt': 'Google Drive',
      'en': 'Google Drive',
    },
    '7d2x1vkc': {
      'pt': '',
      'en': '',
    },
  },
  // app_sobre
  {
    '20gkc2en': {
      'pt': 'Hello World',
      'en': '',
    },
    '25rnu5dl': {
      'pt': 'Hello World',
      'en': '',
    },
  },
  // startup_modal_page
  {
    'a9ii320z': {
      'pt': 'Idioma',
      'en': 'Language',
    },
    'usm95ovr': {
      'pt': 'Selecione o idioma de sua escolha',
      'en': 'Choose the language of your choice',
    },
    'vg28o4si': {
      'pt': 'Brasil',
      'en': 'Brazil',
    },
    'k2i401qy': {
      'pt': 'Inglês',
      'en': 'English US',
    },
    'nx3mdrpb': {
      'pt': 'Seguinte',
      'en': 'Next',
    },
    'b55kujxm': {
      'pt': 'Atualize seu tema',
      'en': 'Update your theme',
    },
    'v5u9t3hz': {
      'pt':
          'Atualize o tema de seu aplicativo selecionando uma das opções abaixo.',
      'en':
          'Update the theme of your application from selecting one of the options below.',
    },
    'msjre7xv': {
      'pt': 'Modo escuro',
      'en': 'Dark mode',
    },
    'l0wwyj7g': {
      'pt': 'Modo Claro',
      'en': 'Light Mode',
    },
    'wlvyhago': {
      'pt': 'Voltar',
      'en': 'Previous',
    },
    '8mxq3v09': {
      'pt': 'Finalizar',
      'en': 'Finish',
    },
  },
  // bottom_temas
  {
    'll3f3odt': {
      'pt': 'Selecione a cor',
      'en': 'Select the color',
    },
  },
  // Miscellaneous
  {
    'vj6bpibl': {
      'pt': '',
      'en': '',
    },
    'lw70npml': {
      'pt': '',
      'en': '',
    },
    'dpbl4b1g': {
      'pt': '',
      'en': '',
    },
    '1h82qmfa': {
      'pt': '',
      'en': '',
    },
    '05n4y67k': {
      'pt': '',
      'en': '',
    },
    'frcmz9xr': {
      'pt': '',
      'en': '',
    },
    'vnpdeb90': {
      'pt': '',
      'en': '',
    },
    'fkn4nzlg': {
      'pt': '',
      'en': '',
    },
    'v6wyt1gf': {
      'pt': '',
      'en': '',
    },
    'l875y8y1': {
      'pt': '',
      'en': '',
    },
    'acynf1xm': {
      'pt': '',
      'en': '',
    },
    '3pmx1vsr': {
      'pt': '',
      'en': '',
    },
    'fohirkf6': {
      'pt': '',
      'en': '',
    },
    '87rva1cv': {
      'pt': '',
      'en': '',
    },
    'd28nmhwa': {
      'pt': '',
      'en': '',
    },
    'etn0jxdf': {
      'pt': '',
      'en': '',
    },
    'jj5sjp4y': {
      'pt': '',
      'en': '',
    },
    'fwvwxy6z': {
      'pt': '',
      'en': '',
    },
    'sqtp6x44': {
      'pt': '',
      'en': '',
    },
    '3j2k0mfj': {
      'pt': '',
      'en': '',
    },
    'dczf8k90': {
      'pt': '',
      'en': '',
    },
    'ow1gsmzp': {
      'pt': '',
      'en': '',
    },
    'cw57w7gr': {
      'pt': '',
      'en': '',
    },
    'dz9uzkau': {
      'pt': '',
      'en': '',
    },
    'n59k4iq3': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
