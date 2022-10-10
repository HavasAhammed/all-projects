import 'package:json_annotation/json_annotation.dart';

part 'number_fact_response.g.dart';

@JsonSerializable()
class NumberFactResponse {
  String? text;
  int? number;
  bool? found;
  String? type;

  NumberFactResponse({this.text, this.number, this.found, this.type});

  factory NumberFactResponse.fromJson(Map<String, dynamic> json) {
    return _$NumberFactResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberFactResponseToJson(this);
}
