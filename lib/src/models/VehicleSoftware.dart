class VehicleSoftware {
  VehicleSoftware({
    this.status,
    this.version,
    this.downloadPercentage,
    this.installPercentage,
  });

  String status;
  String version;
  int downloadPercentage;
  int installPercentage;

  factory VehicleSoftware.fromJson(Map<String, dynamic> json) =>
      VehicleSoftware(
        status: json['status'],
        version: json['version'],
        downloadPercentage: json['download_percentage'],
        installPercentage: json['install_percentage'],
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'version': version,
        'download_percentage': downloadPercentage,
        'install_percentage': installPercentage,
      };
}
