import 'package:cafe_app_freebies/provider/page_index.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';

class BottomNavBarr extends StatelessWidget {
  final Function selectPage;

  const BottomNavBarr({
    @required this.selectPage,
  });

  @override
  Widget build(BuildContext context) {
    print("Bottom App Rebuild");
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.10808355,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF).withOpacity(1.0),
        borderRadius: const BorderRadius.only(
          topLeft: const Radius.circular(46),
          topRight: const Radius.circular(46),
        ),
        boxShadow: [
          const BoxShadow(
            color: const Color(0xffFDE9DA),
            offset: const Offset(0, 2),
            blurRadius: 88,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: const Radius.circular(46),
          topRight: const Radius.circular(46),
        ),
        child: Consumer<BottomNaviBarProvider>(
          builder: (context, itms, child) {
            print("Bottom Navi Bar Item Rebuild");
            return BottomNavigationBar(
              onTap: (value) {
                selectPage(value);
                itms.toNotifyListeners();
              },
              currentIndex: itms.currentIndex,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    OMIcons.home,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    color: Theme.of(context).primaryColor,
                    size: 32,
                  ),
                  title: const Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    OMIcons.locationOn,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  activeIcon: Icon(
                    Icons.location_on,
                    color: Theme.of(context).primaryColor,
                    size: 32,
                  ),
                  title: const Text('Branches'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    OMIcons.localDrink,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  activeIcon: Icon(
                    Icons.local_drink,
                    color: Theme.of(context).primaryColor,
                    size: 32,
                  ),
                  title: const Text('Cart'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    OMIcons.person,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  activeIcon: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                    size: 32,
                  ),
                  title: const Text('Account'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
