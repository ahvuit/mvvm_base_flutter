import 'package:flutter/material.dart';
import 'package:mvvm_base/core/enum/menu_state.dart';
import 'package:mvvm_base/core/view_model/locale_provider.dart';
import 'package:mvvm_base/ui/widget/custom_button_nav_bar.dart';
import 'package:provider/provider.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: const Text('Welcome Home', style: TextStyle(
        color: Colors.amber
      ),),
      bottomNavigationBar:
      CustomBottomNavBar(selectedMenu: MenuState.home, provider: provider)
    );
  }
}
