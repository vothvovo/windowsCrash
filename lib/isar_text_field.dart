import 'package:isar/isar.dart';

part 'isar_text_field.g.dart';

@collection
class IsarTextField {
  const IsarTextField({
    this.id = Isar.autoIncrement,
    this.textFieldString = '',
  });

  // you can also use id = null to auto increment
  final Id id;
  final String textFieldString;
}
