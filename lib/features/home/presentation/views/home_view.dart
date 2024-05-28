import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:floating_menu_panel/floating_menu_panel.dart';
import 'package:iconly/iconly.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<IconData>? icons = const [
    IconlyBold.bookmark,
    IconlyBold.search,
    IconlyBold.setting,
    IconlyBold.camera,
  ];
  final int _selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
         const HomeViewBody(),
        FloatingMenuPanel(
          buttons: icons,
            onPressed: (int ) {
            },
          backgroundColor: Colors.amber,
          borderColor: Colors.black,
          borderWidth: 2,
        ),

      ]),
    );
  }
}

