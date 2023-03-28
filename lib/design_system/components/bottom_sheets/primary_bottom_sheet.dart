import 'package:design_system/design_system/foundation/colors.dart';
import 'package:flutter/material.dart';
import '../../foundation/font_size.dart';
import 'bottom_sheet_theme_color.dart';


class PrimaryBottomSheet {
  final BuildContext context;
  final String title;
  final void Function(String value) onSelected;
  final List<String> data;
  PrimaryBottomSheet({required this.data, required this.onSelected, required this.title, required this.context});

  showList() {
    final BottomSheetColor bottomListColor = Theme.of(context).extension<BottomSheetColor>()!;
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      backgroundColor: Theme.of(context).colorScheme.background,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.9,
      ),
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                height: 5,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorPalette.pGray40Color,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(title, style: const TextStyle(fontSize: FontSize.m, fontWeight: FontWeight.w600), textAlign: TextAlign.left,),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(color: bottomListColor.separatorColor, thickness: 1, height: 0,),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  String value = data[index];
                  return ListTile(
                    onTap: () {
                      onSelected.call(value);
                      Navigator.pop(context);
                    },
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    title: Text(
                      value,
                      style: TextStyle(color: bottomListColor.labelColor),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}