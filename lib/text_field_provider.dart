import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windowscrash/isar_text_field.dart';
import 'package:windowscrash/main.dart';

final textFieldProvider =
    StateNotifierProvider<TextFieldNotifier, String>((ref) {
  return TextFieldNotifier();
});

class TextFieldNotifier extends StateNotifier<String> {
  TextFieldNotifier() : super("");

  void clear() {
    state = "";
  }

  void replaceText(String text) {
    state = text;
  }

  void writeToIsar() async {
    final isarCollection = isar.isarTextFields;

    final newDataForCollection = IsarTextField(textFieldString: state, id: 0);

    await isar.writeTxn(() async {
      await isarCollection.put(newDataForCollection);
    });
  }
}
