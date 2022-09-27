import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windowscrash/text_field_provider.dart';

class TextFieldWidget extends HookConsumerWidget {
  const TextFieldWidget({
    super.key,
    required this.widgetIndex,
  });
  final int widgetIndex;

  @override
  Widget build(BuildContext context, ref) {
    final textFieldProviderRef = ref.watch(textFieldProvider);

    final myFocusNode = useFocusNode();

    final textcontroller = TextEditingController(
      text: textFieldProviderRef,
    );

    return Focus(
      focusNode: myFocusNode,
      onFocusChange: (value) {
        if (value) {
          ref.read(textFieldProvider.notifier).clear();
        } else {
          // ref
          //     .read(shortcutModelListProvider.notifier)
          //     .addStringToCommand(widgetIndex, textcontroller.text);

          // //when losing focus, so when we finished editing the shortcut, write to the database
          // ref.read(shortcutModelListProvider.notifier).writeModelToDatabase();
        }
      },
      child: TextField(
        controller: textcontroller,
        onSubmitted: ((value) {
          ref.read(textFieldProvider.notifier).replaceText(value);
        }),
      ),
    );
  }
}
