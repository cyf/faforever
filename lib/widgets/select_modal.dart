// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:faforever/extensions/extensions.dart';
import 'package:faforever/i18n/i18n.dart';
import 'package:faforever/models/models.dart';
import 'package:faforever/theme/colors.dart';
import 'package:faforever/utils/utils.dart';

typedef VoidPGColorCallback = void Function(PGColor);

class PGColorModal extends StatelessWidget {
  const PGColorModal({
    required this.items,
    required this.callback,
    super.key,
  });

  final List<PGColor> items;
  final VoidPGColorCallback callback;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final languageCode = LocaleSettings.currentLocale.languageCode;
    final bottom = MediaQuery.paddingOf(context).bottom;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select a color',
              style: TextStyle(
                color: isDark ? Colors.white : primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.43,
              ),
            ),
            IconButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  const EdgeInsets.all(4),
                ),
                minimumSize: WidgetStateProperty.all(Size.zero),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: WidgetStateProperty.all(0),
                backgroundColor: WidgetStateProperty.all(
                  isDark ? placeholderTextColor : primaryGrayColor,
                ),
              ),
              onPressed: NavigatorUtil.pop,
              icon: Icon(
                Icons.close,
                color: isDark ? primaryTextColor : secondaryTextColor,
                size: 16,
              ),
            ),
          ],
        ).nestedPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) => TextButton(
            style: ButtonStyle(
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 16),
              ),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              overlayColor: WidgetStateProperty.all(
                isDark ? primaryTextColor : primaryBackgroundColor,
              ),
            ),
            onPressed: () => callback(items[index]),
            child: Text(
              languageCode == 'zh' ? items[index].zhText : items[index].enText,
              style: TextStyle(
                color: isDark ? Colors.white : primaryTextColor,
                fontSize: 14,
                height: 1.43,
              ),
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
                .nestedPadding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                )
                .nestedSizedBox(width: double.maxFinite),
          ),
        ).nestedFlexible(),
      ],
    )
        .nestedConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 400),
        )
        .nestedPadding(
          padding: EdgeInsets.only(bottom: 10 + bottom),
        );
  }
}
