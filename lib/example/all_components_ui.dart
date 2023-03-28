import 'package:design_system/design_system/components/bottom_sheets/primary_bottom_sheet.dart';
import 'package:design_system/design_system/components/success_page.dart';
import 'package:design_system/design_system/foundation/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../design_system/assets/raqami_flags.dart';
import '../design_system/assets/raqami_icons.dart';
import '../design_system/components/amount_text_box/amount_text_box.dart';
import '../design_system/components/app_bar.dart';
import '../design_system/components/bottom_sheets/country_bottom_sheet.dart';
import '../design_system/components/bottom_sheets/country_model.dart';
import '../design_system/components/buttons/disabled_button.dart';
import '../design_system/components/buttons/primary_button.dart';
import '../design_system/components/buttons/secondary_button.dart';
import '../design_system/components/buttons/special_button.dart';
import '../design_system/components/buttons/tertiary_button.dart';
import '../design_system/components/dropdown_text_fields/drop_down_text_field.dart';
import '../design_system/components/search_box/search_box.dart';
import '../design_system/components/text_fields/text_field.dart';
import '../design_system/components/toast_message.dart';
import '../design_system/foundation/colors.dart';
import '../design_system/foundation/font_size.dart';
import '../design_system/themes/theme_provider.dart';


class AllComponentsUi extends StatefulWidget {
  const AllComponentsUi({Key? key}) : super(key: key);

  @override
  State<AllComponentsUi> createState() => _AllComponentsUiState();
}

class _AllComponentsUiState extends State<AllComponentsUi> {
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
              backgroundColor: themeProvider.themeMode == ThemeMode.light
                  ? ColorPalette.sBlueGreyColor
                  : ColorPalette.pGray100Color,
              elevation: 1,
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

          const Text("Text Field Without Note", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._textFieldsWithoutNote,

          const Text("Text Field With Note", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._textFieldsWithNote,

          const Text("Dropdown Without Note", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._dropDownWithoutNote,

          const Text("Dropdown With Note", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._dropDownWithNote,

          const Text("Dropdown Without Note With Flag", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._dropDownWithoutNoteFlag,

          const Text("Dropdown With Note With Flag", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._dropDownWithNoteFlag,

          const Text("Search box", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._searchBox,

          const Text("Toast messages", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._toastMessage,

          const Text("Headers", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._header,

          const Text("Text box", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._textBox,

          const Text("Success page", style: TextStyle(fontSize: FontSize.xxxl, fontWeight: FontWeight.w600),),
          verticalSpaceSmall,
          ..._successPage,
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

  List<Widget> get _textFieldsWithoutNote => [
    const RaqamiTextField(hint: "Hint", label: "Label"),
    verticalSpaceXXXXLarge,
    verticalSpaceXXXXLarge,
    const RaqamiTextField(hint: "Hint", label: "Label", isEnabled: false),
    verticalSpaceXXXXLarge,
    verticalSpaceXXXXLarge,
    const RaqamiTextField(hint: "Hint", label: "Label", hasError: true),
    verticalSpaceXXXXLarge,
    verticalSpaceXXXXLarge,
  ];

  List<Widget> get _textFieldsWithNote => [
    const RaqamiTextField(hint: "Hint", label: "Label", note: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",),
    verticalSpaceXXXXLarge,
    verticalSpaceXXXXLarge,
    const RaqamiTextField(hint: "Hint", label: "Label", isEnabled: false, note: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",),
    verticalSpaceXXXXLarge,
    verticalSpaceXXXXLarge,
    const RaqamiTextField(hint: "Hint", label: "Label", hasError: true, note: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",),
    verticalSpaceXXXLarge,
    verticalSpaceXXXLarge,
  ];

  List<Widget> get _dropDownWithNote => [
        RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          note:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",
          onTap: () {
            PrimaryBottomSheet(
              context: context,
              title: "Text label",
              onSelected: (String value) {},
              data: [
                "Purpose A",
                "Purpose B",
                "Purpose C",
                "Purpose D",
                "Purpose E",
                "Purpose F",
                "Purpose G",
                "Purpose H"
              ],
            ).showList();
          },
        ),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          isEnabled: false,
          note:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",
        ),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          hasError: true,
          note:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",
        ),
        verticalSpaceXXXLarge,
        verticalSpaceXXXLarge,
      ];

  List<Widget> get _dropDownWithoutNote => [
        RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          onTap: () {
            PrimaryBottomSheet(
              context: context,
              title: "Text label",
              onSelected: (String value) {},
              data: ["Purpose A", "Purpose B", "Purpose C", "Purpose D", "Purpose E", "Purpose F", "Purpose G", "Purpose H"],
            ).showList();
          },
        ),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
            hint: "Hint", label: "Label", isEnabled: false),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
            hint: "Hint", label: "Label", hasError: true),
        verticalSpaceXXXLarge,
        verticalSpaceXXXLarge,
      ];

  List<Widget> get _dropDownWithNoteFlag => [
        RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          prefixImagePath: RaqamiFlags.pakistan,
          note:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",
          onTap: () {
            RaqamiCountryBottomSheet.country(
              context: context,
              title: "Select country",
              onSelected: (CountryModel value) {},
            ).showList();
          },
        ),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          prefixImagePath: RaqamiFlags.pakistan,
          isEnabled: false,
          note:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",
        ),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          prefixImagePath: RaqamiFlags.pakistan,
          hasError: true,
          note:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.Typography",
        ),
        verticalSpaceXXXLarge,
        verticalSpaceXXXLarge,
      ];

  List<Widget> get _dropDownWithoutNoteFlag => [
        RaqamiDropDownTextField(
          onTap: () {
            RaqamiCountryBottomSheet.phoneCode(
              context: context,
              title: "Select country",
              onSelected: (CountryModel value) {},
            ).showList();
          },
          hint: "Hint",
          label: "Label",
          prefixImagePath: RaqamiFlags.pakistan,
        ),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          isEnabled: false,
          prefixImagePath: RaqamiFlags.pakistan,
        ),
        verticalSpaceXXXXLarge,
        verticalSpaceXXXXLarge,
        const RaqamiDropDownTextField(
          hint: "Hint",
          label: "Label",
          hasError: true,
          prefixImagePath: RaqamiFlags.pakistan,
        ),
        verticalSpaceXXXLarge,
        verticalSpaceXXXLarge,
      ];

  List<Widget> get _searchBox => [
    const RaqamiSearchBox(hint: "Search"),
    verticalSpaceXXXXLarge,
    const RaqamiSearchBox(hint: "Search", isEnabled: false),
    verticalSpaceXXXXLarge,
  ];

  List<Widget> get _toastMessage => [
    PrimaryButton.s(
      label: "Toast success message",
      onPressed: () {
        ToastMessage.success(
          context,
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nunc purus.",
        ).show();
      },
    ),
    verticalSpaceRegular,
    PrimaryButton.s(
      label: "Toast warning message",
      onPressed: () {
        ToastMessage.warning(context,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nunc purus.")
            .show();
      },
    ),
    verticalSpaceRegular,
    PrimaryButton.s(
      label: "Toast error message",
      onPressed: () {
        ToastMessage.error(context,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nunc purus.")
            .show();
      },
    ),
    verticalSpaceXXXLarge,
  ];

  List<Widget> get _header => [
    appBar(
      title: "TitleHeader",
      hasLeadingArrowBackButton: true,
      hasTrailingCloseButton: true,
      onPressedArrow: () {},
      onPressedClose: () {},
    ),
    verticalSpaceRegular,
    appBar(title: "TitleHeader", hasLeadingArrowBackButton: true, onPressedArrow: () {},),
    verticalSpaceRegular,
    appBar(title: "TitleHeader", hasTrailingCloseButton: true, onPressedClose: () {},),
    verticalSpaceRegular,
    appBar(
      title: "TitleHeader",
      hasLeadingArrowBackButton: true,
      hasTrailingCloseButton: true,
      isStepper: true,
      onPressedArrow: () {},
      onPressedClose: () {},
    ),
    verticalSpaceXXXLarge,
  ];


  List<Widget> get _textBox => [
    const AmountTextBox.large(label: "Label Text", amountValue: 0),
    verticalSpaceRegular,
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        AmountTextBox.small(amountValue: 0),
      ],
    ),
    verticalSpaceXXXLarge,
  ];

  List<Widget> get _successPage => [
        PrimaryButton.l(
          label: "Go to success page",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SuccessPage()));
          },
        ),
        verticalSpaceXXXLarge,
      ];
}
