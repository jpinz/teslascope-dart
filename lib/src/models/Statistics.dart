class Statistics {
  Statistics({
    this.drives,
    this.distance,
    this.drivesDuration,
    this.charges,
    this.supercharging,
    this.chargesDuration,
    this.chargesKwh,
    this.joined,
    this.hw,
  });

  int drives;
  double distance;
  int drivesDuration;
  int charges;
  int supercharging;
  int chargesDuration;
  double chargesKwh;
  String joined;
  String hw;

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
        drives: json['drives'],
        distance: json['distance'].toDouble(),
        drivesDuration: json['drives_duration'],
        charges: json['charges'],
        supercharging: json['supercharging'],
        chargesDuration: json['charges_duration'],
        chargesKwh: json['charges_kwh'].toDouble(),
        joined: json['joined'],
        hw: json['hw'],
      );

  Map<String, dynamic> toJson() => {
        'drives': drives,
        'distance': distance,
        'drives_duration': drivesDuration,
        'charges': charges,
        'supercharging': supercharging,
        'charges_duration': chargesDuration,
        'charges_kwh': chargesKwh,
        'joined': joined,
        'hw': hw,
      };
}
