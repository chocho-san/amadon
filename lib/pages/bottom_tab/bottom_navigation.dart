import 'package:amadon/page_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomNavigation extends HookWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  BottomNavigationBarItem createTab(BuildContext context, TabType type) {
    return BottomNavigationBarItem(
      icon: TabIcon(
        type: type,
        isSelected: false,
      ),
      activeIcon: TabIcon(
        type: type,
        isSelected: true,
      ),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabType = useValueNotifier(TabType.top);
    return ValueListenableBuilder<TabType>(
      valueListenable: tabType,
      builder: (ctx, type, _) => Scaffold(
        body: type.navigator,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.teal,
          selectedLabelStyle: const TextStyle(fontSize: 10),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
          items: TabType.values.map((type) => createTab(ctx, type)).toList(),
          onTap: (value) {
            final selectedTab = TabType.values[value];
            if (selectedTab == tabType.value) {
              selectedTab.globalKey.currentState?.popUntil(
                (route) => route.isFirst,
              );
            } else {
              tabType.value = selectedTab;
            }
          },
          currentIndex: type.index,
        ),
      ),
    );
  }
}

class TabIcon extends StatelessWidget {
  const TabIcon({
    required this.type,
    required this.isSelected,
  });

  final TabType type;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected ? _SelectedIcon(type) : _NormalIcon(type);
  }
}

class _NormalIcon extends StatelessWidget {
  const _NormalIcon(this.type);

  final TabType type;

  @override
  Widget build(BuildContext context) {
    return Icon(
      type.iconData,
    );
  }
}

class _SelectedIcon extends StatelessWidget {
  const _SelectedIcon(this.type);

  final TabType type;

  @override
  Widget build(BuildContext context) {
    return Icon(
      type.iconData,
    );
  }
}
