class Climate {
  Climate({
    this.inside,
    this.outside,
    this.isAutoConditioningOn,
    this.isClimateOn,
    this.isFrontDefrosterOn,
    this.isRearDefrosterOn,
    this.seatHeaters,
  });

  double inside;
  double outside;
  bool isAutoConditioningOn;
  bool isClimateOn;
  bool isFrontDefrosterOn;
  bool isRearDefrosterOn;
  SeatHeaters seatHeaters;

  factory Climate.fromJson(Map<String, dynamic> json) => Climate(
        inside: json['inside'] == null ? null : json['inside'].toDouble(),
        outside: json['outside'] == null ? null : json['outside'].toDouble(),
        isAutoConditioningOn: json['is_auto_conditioning_on'] == null
            ? null
            : json['is_auto_conditioning_on'],
        isClimateOn:
            json['is_climate_on'] == null ? null : json['is_climate_on'],
        isFrontDefrosterOn: json['is_front_defroster_on'] == null
            ? null
            : json['is_front_defroster_on'],
        isRearDefrosterOn: json['is_rear_defroster_on'] == null
            ? null
            : json['is_rear_defroster_on'],
        seatHeaters: json['seat_heaters'] == null
            ? null
            : SeatHeaters.fromJson(json['seat_heaters']),
      );

  Map<String, dynamic> toJson() => {
        'inside': inside == null ? null : inside,
        'outside': outside == null ? null : outside,
        'is_auto_conditioning_on':
            isAutoConditioningOn == null ? null : isAutoConditioningOn,
        'is_climate_on': isClimateOn == null ? null : isClimateOn,
        'is_front_defroster_on':
            isFrontDefrosterOn == null ? null : isFrontDefrosterOn,
        'is_rear_defroster_on':
            isRearDefrosterOn == null ? null : isRearDefrosterOn,
        'seat_heaters': seatHeaters == null ? null : seatHeaters.toJson(),
      };
}

class SeatHeaters {
  SeatHeaters({
    this.left,
    this.right,
    this.leftRear,
    this.centerRear,
    this.rightRear,
  });

  int left;
  int right;
  int leftRear;
  int centerRear;
  int rightRear;

  factory SeatHeaters.fromJson(Map<String, dynamic> json) => SeatHeaters(
        left: json['left'],
        right: json['right'],
        leftRear: json['left_rear'],
        centerRear: json['center_rear'],
        rightRear: json['right_rear'],
      );

  Map<String, dynamic> toJson() => {
        'left': left,
        'right': right,
        'left_rear': leftRear,
        'center_rear': centerRear,
        'right_rear': rightRear,
      };
}
