import 'package:design_system/design_system/components/design_buttons/disabled_button.dart';
import 'package:design_system/design_system/components/design_buttons/primary_button.dart';
import 'package:design_system/design_system/components/design_buttons/secondary_button.dart';
import 'package:design_system/design_system/components/design_buttons/special_button.dart';
import 'package:design_system/design_system/components/design_buttons/tertiary_button.dart';
import 'package:design_system/design_system/foundation/ui_helpers.dart';
import 'package:design_system/design_system/raqami_assets/raqami_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'design_system/foundation/font_size.dart';
import 'design_system/themes/theme_provider.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  State<ExampleView> createState() => _ExampleViewState();
}

class _ExampleViewState extends State<ExampleView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, _) {
            return AppBar(
              title: const Text('Raqami Design system', style: TextStyle(fontSize: FontSize.xxxl),),
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {
                    themeProvider.changeTheme(themeProvider.themeMode == ThemeMode.light?ThemeMode.dark:ThemeMode.light);
                  },
                  icon: themeProvider.themeMode == ThemeMode.light
                      ? const Icon(Icons.light_mode)
                      : const Icon(Icons.dark_mode),
                ),
              ],
            );
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: [
          const Text("Special Button", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._specialButtons,

          const Text("Primary Button", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._primaryButtons,

          const Text("Secondary Button", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._secondaryButtons,

          const Text("Tertiary Button", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._tertiaryButtons,

          const Text("Disabled Button", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._disabledButtons,
        ],
      ),
    );
  }


  List<Widget> get _specialButtons => [
    Row(
      children: const [
        Expanded(child: SpecialButton.xs(label: "BUTTON")),
        horizontalSpaceSmall,
        Expanded(child: SpecialButton.xs(label: "BUTTON", icon: RaqamiIcons.add)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: SpecialButton.s(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: SpecialButton.s(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: SpecialButton.m(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: SpecialButton.m(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: SpecialButton.l(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: SpecialButton.l(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceXXXLarge,
  ];

  List<Widget> get _primaryButtons => [
    Row(
      children: const [
        Expanded(child: PrimaryButton.xs(label: "BUTTON")),
        horizontalSpaceSmall,
        Expanded(child: PrimaryButton.xs(label: "BUTTON", icon: RaqamiIcons.add)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: PrimaryButton.s(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: PrimaryButton.s(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: PrimaryButton.m(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: PrimaryButton.m(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: PrimaryButton.l(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: PrimaryButton.l(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceXXXLarge,
  ];

  List<Widget> get _secondaryButtons => [
    Row(
      children: const [
        Expanded(child: SecondaryButton.xs(label: "BUTTON")),
        horizontalSpaceSmall,
        Expanded(child: SecondaryButton.xs(label: "BUTTON", icon: RaqamiIcons.add)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: SecondaryButton.s(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: SecondaryButton.s(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: SecondaryButton.m(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: SecondaryButton.m(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: SecondaryButton.l(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: SecondaryButton.l(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceXXXLarge,
  ];

  List<Widget> get _tertiaryButtons => [
    Row(
      children: const [
        Expanded(child: TertiaryButton.xs(label: "BUTTON")),
        horizontalSpaceSmall,
        Expanded(child: TertiaryButton.xs(label: "BUTTON", icon: RaqamiIcons.add)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: TertiaryButton.s(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: TertiaryButton.s(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: TertiaryButton.m(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: TertiaryButton.m(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: TertiaryButton.l(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: TertiaryButton.l(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceXXXLarge,
  ];

  List<Widget> get _disabledButtons => [
    Row(
      children: const [
        Expanded(child: DisabledButton.xs(label: "BUTTON")),
        horizontalSpaceSmall,
        Expanded(child: DisabledButton.xs(label: "BUTTON", icon: RaqamiIcons.add)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: DisabledButton.s(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: DisabledButton.s(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: DisabledButton.m(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: DisabledButton.m(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceSmall,
    Row(
      children: const [
        Expanded(child: DisabledButton.l(label: "Button")),
        horizontalSpaceSmall,
        Expanded(child: DisabledButton.l(label: "Button", icon: RaqamiIcons.add,)),
      ],
    ),
    verticalSpaceXXXLarge,
  ];
}
