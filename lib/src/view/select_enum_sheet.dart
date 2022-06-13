import 'package:flutter/material.dart';
import 'package:flutter_template/src/extension/extension.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Enumを選ぶダイアログを表示する
Future<T?> showSelectEnumSheet<T extends Enum>({
  required BuildContext context,
  required List<T> values,
  required String title,
  required String Function(BuildContext context, T value) labelBuilder,
}) async {
  return showModalBottomSheet<T>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        child: _SelectEnumSheet(
          title: title,
          values: values,
          labelBuilder: labelBuilder,
        ),
      );
    },
  );
}

class _SelectEnumSheet<T extends Enum> extends HookConsumerWidget {
  const _SelectEnumSheet({
    super.key,
    required this.values,
    required this.title,
    required this.labelBuilder,
  });
  final List<T> values;
  final String title;
  final String Function(BuildContext context, T value) labelBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Gap(16),
            Text(
              title,
              style: context.textTheme.headline6,
            ),
            const Spacer(),
            IconButton(
              padding: const EdgeInsets.all(16),
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        const Divider(height: 1),
        Flexible(
          child: ListView(
            // 短い時は短縮表示したいので、展開して高さを固定する
            shrinkWrap: true,
            // 短縮時にスクロール無効化する
            primary: false,
            padding: EdgeInsets.zero,
            children: values
                .map(
                  (value) => ListTile(
                    title: Text(labelBuilder(context, value)),
                    onTap: () {
                      Navigator.of(context).pop(value);
                    },
                  ),
                )
                .toList(growable: false),
          ),
        ),
      ],
    );
  }
}
