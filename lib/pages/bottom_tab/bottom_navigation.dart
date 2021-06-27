import 'package:amadon/tab_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomNavigation extends HookWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  BottomNavigationBarItem bottomTabItem(TabType type) {
    return BottomNavigationBarItem(
      icon: type.tabItem,
      tooltip: type.tabToolTip,
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabType = useValueNotifier(TabType.top);
    return ValueListenableBuilder<TabType>(
      valueListenable: tabType,
      builder: (ctx, type, _) => Scaffold(
        body: IndexedStack(
          index: type.index,
          children: TabType.values.map((type) => type.navigator).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.black87,
          currentIndex: type.index,
          items: TabType.values.map(bottomTabItem).toList(),
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
        ),
      ),
    );
  }
}
