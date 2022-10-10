import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_sample/number_fact_resp/number_fact_resp.dart';

Future<NumberFactResp> getNumberFact({required String number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
      // final _bodyAsJson = jsonEncode(_response.body);
      final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
      // print(_bodyAsJson);

      final _data = NumberFactResp.fromJson(_bodyAsJson);
      return _data;
  
}
