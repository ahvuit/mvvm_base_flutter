import 'package:flutter/material.dart';
import 'package:mvvm_base/core/enum/menu_state.dart';
import 'package:mvvm_base/core/view_model/locale_provider.dart';
import 'package:mvvm_base/l10n/generated/l10n.dart';
import 'package:mvvm_base/ui/shared/color_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
    required this.provider,
  }) : super(key: key);

  final MenuState selectedMenu;
  final LocaleProvider provider;

  Widget buildIconMenu(Function? onTap, String text, IconData icon, Color color){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: onTap as void Function()?,
            child: Icon(
              icon,
              color: color,
              size: 25,
            ),
          ),
          Text(text,
              style: TextStyle(
                  color: color, fontSize: 12))
        ],
      );
  }

  Widget buildButtonNav(
      MenuState menuState, Function? onTap, String text, IconData icon) {
    return menuState == selectedMenu
        ? buildIconMenu(onTap,text, icon, AppColors.primaryColor)
        : buildIconMenu(onTap,text, icon, AppColors.black);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 50,
            color: AppColors.primaryColor.withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildButtonNav(MenuState.home, () {
                //Navigator.pushNamed(context, RoutePaths.home);
              }, IntlStrings.of(context).home_page, Icons.home_rounded),
              buildButtonNav(MenuState.order, () {
                //Navigator.pushNamed(context, RoutePaths.favorite);
              }, IntlStrings.of(context).order, Icons.restaurant_menu_rounded),
              buildButtonNav(MenuState.activities, () {
                //Navigator.pushNamed(context, RoutePaths.order);
              }, IntlStrings.of(context).activities, Icons.restore_rounded),
              buildButtonNav(MenuState.stores, () {
                //Navigator.pushNamed(context, RoutePaths.profile);
              }, IntlStrings.of(context).stores, Icons.storefront_outlined),
              buildButtonNav(MenuState.others, () {
                //Navigator.pushNamed(context, RoutePaths.profile);
              }, IntlStrings.of(context).others, Icons.menu_rounded),
            ],
          )),
    );
  }
}
