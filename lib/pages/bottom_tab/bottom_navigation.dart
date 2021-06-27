import 'package:amadon/logger.dart';
import 'package:amadon/tab_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final currentTabProvider = StateProvider<TabType>((ref) => TabType.top);

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  BottomNavigationBarItem bottomTabItem(TabType type) {
    return BottomNavigationBarItem(
      icon: type.tabItem,
      tooltip: type.tabToolTip,
      label: '',
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(currentTabProvider).state;
    logger.info(currentTab.tabToolTip);
    return Scaffold(
      body: IndexedStack(
        index: currentTab.index,
        children: TabType.values.map((type) {
          return Offstage(
            offstage: type != currentTab,
            child: type.navigator,
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black87,
        currentIndex: currentTab.index,
        items: TabType.values.map(bottomTabItem).toList(),
        onTap: (value) {
          final selectedTab = TabType.values[value];
          if (selectedTab == currentTab) {
            selectedTab.globalKey.currentState?.popUntil(
              (route) => route.isFirst,
            );
          } else {
            ref.read(currentTabProvider).state = selectedTab;
          }
        },
      ),
    );
  }
}
