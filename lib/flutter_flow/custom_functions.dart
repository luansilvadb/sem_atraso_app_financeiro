import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? pularLinhaLista(List<String>? formattedJson) {
  // Crie uma função para formatar o JSON quando tiver vírgula pule de linha
  if (formattedJson == null) {
    return null;
  }

  String result = '';
  for (int i = 0; i < formattedJson.length; i++) {
    result += formattedJson[i];
    if (i < formattedJson.length - 1) {
      result += '\n';
    }
  }

  return result;
}
