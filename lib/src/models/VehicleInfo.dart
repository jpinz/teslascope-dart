class VehicleInfo {
  VehicleInfo({
    this.locked,
    this.sentryMode,
    this.latitude,
    this.longitude,
    this.isUserPresent,
    this.windows,
    this.config,
  });

  bool locked;
  bool sentryMode;
  double latitude;
  double longitude;
  bool isUserPresent;
  Windows windows;
  Config config;

  factory VehicleInfo.fromJson(Map<String, dynamic> json) => VehicleInfo(
        locked: json['locked'],
        sentryMode: json['sentry_mode'],
        latitude: json['latitude'].toDouble(),
        longitude: json['longitude'].toDouble(),
        isUserPresent: json['is_user_present'],
        windows: Windows.fromJson(json['windows']),
        config: Config.fromJson(json['config']),
      );

  Map<String, dynamic> toJson() => {
        'locked': locked,
        'sentry_mode': sentryMode,
        'latitude': latitude,
        'longitude': longitude,
        'is_user_present': isUserPresent,
        'windows': windows.toJson(),
        'config': config.toJson(),
      };
}

class Windows {
  Windows({
    this.driverFront,
    this.driverRear,
    this.passengerFront,
    this.passengerRear,
  });

  bool driverFront;
  bool driverRear;
  bool passengerFront;
  bool passengerRear;

  factory Windows.fromJson(Map<String, dynamic> json) => Windows(
        driverFront: json['driver_front'],
        driverRear: json['driver_rear'],
        passengerFront: json['passenger_front'],
        passengerRear: json['passenger_rear'],
      );

  Map<String, dynamic> toJson() => {
        'driver_front': driverFront,
        'driver_rear': driverRear,
        'passenger_front': passengerFront,
        'passenger_rear': passengerRear,
      };
}

class Config {
  Config({
    this.color,
    this.colorName,
    this.wheels,
    this.spoiler,
    this.roofColor,
  });

  String color;
  String colorName;
  String wheels;
  String spoiler;
  String roofColor;

  factory Config.fromJson(Map<String, dynamic> json) => Config(
        color: json['color'],
        colorName: json['color_name'],
        wheels: json['wheels'],
        spoiler: json['spoiler'],
        roofColor: json['roof_color'],
      );

  Map<String, dynamic> toJson() => {
        'color': color,
        'color_name': colorName,
        'wheels': wheels,
        'spoiler': spoiler,
        'roof_color': roofColor,
      };
}
