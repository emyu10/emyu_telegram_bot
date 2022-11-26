part of '../types.dart';

class BotCommand {
  /// Text of the command. 1-32 characters.
  ///
  /// Can contain only lowercase English letters, digits and underscores.
  final String command;

  /// Description of the command; 1-256 characters.
  final String description;

  BotCommand({
    required this.command,
    required this.description,
  });

  BotCommand copyWith({
    String? command,
    String? description,
  }) {
    return BotCommand(
      command: command ?? this.command,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'command': command,
      'description': description,
    };
  }

  factory BotCommand.fromMap(Map<String, dynamic> map) {
    return BotCommand(
      command: map['command'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BotCommand.fromJson(String source) =>
      BotCommand.fromMap(json.decode(source));

  @override
  String toString() =>
      'BotCommand(command: $command, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BotCommand &&
        other.command == command &&
        other.description == description;
  }

  @override
  int get hashCode => command.hashCode ^ description.hashCode;
}
