import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather extends Equatable {
  final String cityName;
  final double temperature;

  Weather({
    @required this.cityName,
    @required this.temperature,
  }) : super([cityName, temperature]);

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
