import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart' as string;
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen(this.child, {super.key});
  final Widget child;

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    const tabs = [
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.homeRoute,
        icon: FaIcon(FontAwesomeIcons.house, color: Colors.grey),
        activeIcon:
            FaIcon(FontAwesomeIcons.house, color: AppThemes.primaryColor2),
        label: string.home,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.favouritesRoute,
        icon: FaIcon(FontAwesomeIcons.solidHeart, color: Colors.grey),
        activeIcon:
            FaIcon(FontAwesomeIcons.solidHeart, color: AppThemes.primaryColor2),
        label: string.favourites,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.uploadRoute,
        icon: FaIcon(FontAwesomeIcons.upload, color: Colors.grey),
        activeIcon:
            FaIcon(FontAwesomeIcons.upload, color: AppThemes.primaryColor2),
        label: string.upload,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.downloadRoute,
        icon: FaIcon(FontAwesomeIcons.download, color: Colors.grey),
        activeIcon:
            FaIcon(FontAwesomeIcons.download, color: AppThemes.primaryColor2),
        label: string.download,
      ),
    ];

    int locationToTabIndex(String location) {
      final index =
          tabs.indexWhere((t) => location.startsWith(t.initialLocation));
      // if index not found (-1), return 0
      return index < 0 ? 0 : index;
    }

    final int currentIndex = locationToTabIndex(GoRouter.of(context)
        .routerDelegate
        .currentConfiguration
        .uri
        .toString());
    // callback used to navigate to the desired tab
    void onItemTapped(BuildContext context, int tabIndex) {
      if (tabIndex != currentIndex) {
        // go to the initial location of the selected tab (by index)
        context.go(tabs[tabIndex].initialLocation);
      }
    }

    return Scaffold(
      extendBody: true,
      body: widget.child,
      bottomNavigationBar: ColoredBox(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppThemes.lightDarkColor),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) => onItemTapped(context, index),
              items: tabs,
            ),
          ),
        ),
      ),
    );
  }
}

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  const ScaffoldWithNavBarTabItem({
    required this.initialLocation,
    required super.icon,
    required super.activeIcon,
    super.label,
  });

  /// The initial location/path
  final String initialLocation;
}
