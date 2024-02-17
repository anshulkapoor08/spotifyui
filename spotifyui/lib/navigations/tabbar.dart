import 'package:flutter/material.dart';
import 'package:spotifyui/views/home.dart';
import 'package:spotifyui/views/library.dart';
import 'package:spotifyui/views/profile.dart';
import 'package:spotifyui/views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}
class _TabbarState extends State<Tabbar> {
  int _selectedtab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedtab,
        onTap: (index) {
          setState(() {
            _selectedtab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'profile',
          ),
        ],
      ),
      body:  Stack(
        /*children: [
          renderView(0, const HomeView(),),
          renderView(1, const SearchView(),),
          renderView(2, const LibraryView(),),
          renderView(3, const ProfileView(),),
        ],*/
        children: [
          Offstage(
            offstage: _selectedtab != 0,
            child: TickerMode(
              enabled: _selectedtab == 0,
              child: const HomeView(),
            ),
          ),
          Offstage(
            offstage: _selectedtab != 1,
            child: TickerMode(
              enabled: _selectedtab == 1,
              child: const SearchView(),
              ),
            ),

          Offstage(
            offstage: _selectedtab != 2,
            child: TickerMode(
              enabled: _selectedtab == 2,
              child: const LibraryView(),
            ),
          ),
          Offstage(
            offstage: _selectedtab != 3,
            child: TickerMode(
              enabled: _selectedtab == 3,
              child: const ProfileView(),
            ),
          ),
        ],

        /*children: [
          if (_selectedtab == 0) const HomeView(),
          if (_selectedtab == 1) const Center(child: Text('Search')),
          if (_selectedtab == 2) const Center(child: Text('Library')),
          if (_selectedtab == 3) const Center(child: Text('Profile')),
        ], 
        Another way to do it */
      ),
    );
  }
}

/*Widget renderView(int tabIndex, Widget view) {
  return IgnorePointer(
    ignoring: _selectedtab != tabIndex,
    child: Opacity(opacity: _selectedtab == tabIndex ? 1.0 : 0.0, child: view),
  );
}
*/