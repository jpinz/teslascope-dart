class Command {
  const Command(this.command, this.description);

  final String command;
  final String description;

  @override
  String toString() => 'Command(${command}, ${description})';

  static const Command honkHorn =
      Command('honkHorn', 'Honks the vehicle\'s horn.');
  static const Command flashLights =
      Command('flashLights', 'Flashes the vehicle\'s lights once.');
  static const Command enableSentryMode =
      Command('enableSentryMode', 'Enables Sentry Mode for the vehicle.');
  static const Command disableSentryMode =
      Command('disableSentryMode', 'Disables Sentry Mode for the vehicle.');
  static const Command startAC = Command(
      'startAC', 'Turns on the auto conditioning (at last set setting).');
  static const Command stopAC =
      Command('stopAC', 'Turns off the auto conditioning.');
  static const Command ventWindows = Command(
      'ventWindows', 'Opens the vehicle\'s four windows partially to vent.');
  static const Command closeWindows =
      Command('closeWindows', 'Closes the vehicle\'s four windows.');
  static const Command openTrunk =
      Command('openTrunk', 'Opens the vehicle\'s trunk.');
  static const Command openFrunk =
      Command('openFrunk', 'Opens the vehicle\'s frunk.');
  static const Command openChargeDoor =
      Command('openChargeDoor', 'Opens the vehicle\'s charging port.');
  static const Command closeChargeDoor =
      Command('closeChargeDoor', 'Closes the vehicle\'s charging port.');
  static const Command startCharging = Command('startCharging',
      'Starts charging if a cord is plugged into the vehicle.');
  static const Command stopCharging =
      Command('stopCharging', 'Stops an active charging session.');
}
