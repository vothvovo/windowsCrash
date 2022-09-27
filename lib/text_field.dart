import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windowscrash/text_field_provider.dart';

class TextFieldWidget extends HookConsumerWidget {
  const TextFieldWidget({
    super.key,
  });

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
          // we also want to update our state when losing focus
          ref.read(textFieldProvider.notifier).replaceText(textcontroller.text);

          // when losing focus, so when we finished editing the shortcut, write to the database
          ref.read(textFieldProvider.notifier).writeToIsar();
        }
      },
      child: TextField(
        controller: textcontroller,
        // presing enter
        onSubmitted: ((value) {
          ref.read(textFieldProvider.notifier).replaceText(value);
        }),
      ),
    );
  }
}
