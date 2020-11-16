class Battery {
  Battery({
    this.level,
    this.range,
    this.chargeLimitSoc,
    this.chargingState,
    this.minutesRemaining,
    this.timeRemaining,
    this.scheduledChargingPending,
    this.scheduledChargingStartTime,
  });

  int level;
  String range;
  int chargeLimitSoc;
  String chargingState;
  int minutesRemaining;
  String timeRemaining;
  bool scheduledChargingPending;
  dynamic scheduledChargingStartTime;

  factory Battery.fromJson(Map<String, dynamic> json) => Battery(
        level: json['level'],
        range: json['range'],
        chargeLimitSoc: json['charge_limit_soc'],
        chargingState: json['charging_state'],
        minutesRemaining: json['minutes_remaining'],
        timeRemaining: json['time_remaining'],
        scheduledChargingPending: json['scheduled_charging_pending'],
        scheduledChargingStartTime: json['scheduled_charging_start_time'],
      );

  Map<String, dynamic> toJson() => {
        'level': level,
        'range': range,
        'charge_limit_soc': chargeLimitSoc,
        'charging_state': chargingState,
        'minutes_remaining': minutesRemaining,
        'time_remaining': timeRemaining,
        'scheduled_charging_pending': scheduledChargingPending,
        'scheduled_charging_start_time': scheduledChargingStartTime,
      };
}
