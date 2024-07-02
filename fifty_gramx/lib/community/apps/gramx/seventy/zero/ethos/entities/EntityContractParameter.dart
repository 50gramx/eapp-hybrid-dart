enum ProtobufType {
  string,
  int32,
  int64,
  double,
  bool,
  timestamp,
  message,
}

class EntityContractParameter {
  final String name;
  final ProtobufType type;
  final String snakeCase;
  final String camelCase;
  final String description;
  final String example;
  final bool canRepeat;

  EntityContractParameter({
    required this.name,
    required this.type,
    required this.description,
    required this.example,
    this.snakeCase = "",
    this.camelCase = "",
    required this.canRepeat,
  });
}
