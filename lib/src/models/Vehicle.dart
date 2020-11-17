// ignore: prefer_if_null_operators
import 'dart:convert';

import 'Battery.dart';
import 'Climate.dart';
import 'VehicleSoftware.dart';
import 'Statistics.dart';
import 'VehicleInfo.dart';

Vehicle vehicleFromJson(String str) => Vehicle.fromJson(json.decode(str));

String vehicleToJson(Vehicle data) => json.encode(data.toJson());

class Vehicle {
  Vehicle({
    this.name,
    this.publicId,
    this.odometer,
    this.model,
    this.trim,
    this.year,
    this.carVersion,
    this.battery,
    this.climate,
    this.renderUrl,
    this.software,
    this.statistics,
    this.vehicle,
  });

  String name;
  String publicId;
  double odometer;
  String model;
  String trim;
  String year;
  String carVersion;
  Battery battery;
  Climate climate;
  String renderUrl;
  VehicleSoftware software;
  Statistics statistics;
  VehicleInfo vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        name: json['name'],
        publicId: json['public_id'],
        odometer: json['odometer'] == null ? null : json['odometer'].toDouble(),
        model: json['model'],
        trim: json['trim'],
        year: json['year'],
        carVersion: json['car_version'],
        battery:
            json['battery'] == null ? null : Battery.fromJson(json['battery']),
        climate:
            json['climate'] == null ? null : Climate.fromJson(json['climate']),
        renderUrl: json['render_url'],
        software: json['software'] == null
            ? null
            : VehicleSoftware.fromJson(json['software']),
        statistics: json['statistics'] == null
            ? null
            : Statistics.fromJson(json['statistics']),
        vehicle: json['vehicle'] == null
            ? null
            : VehicleInfo.fromJson(json['vehicle']),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'public_id': publicId,
        'odometer': odometer,
        'model': model,
        'trim': trim,
        'year': year,
        'car_version': carVersion,
        'battery': battery == null ? null : battery.toJson(),
        'climate': climate == null ? null : climate.toJson(),
        'render_url': renderUrl,
        'software': software == null ? null : software.toJson(),
        'statistics': statistics == null ? null : statistics.toJson(),
        'vehicle': vehicle == null ? null : vehicle.toJson(),
      };

  @override
  String toString() {
    return '${name} ${model}-${trim} (${year})';
  }
}

enum VehicleState { unknown, online, asleep, offline }
