import 'package:whatsapp_clone/utils/exports.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Chatview(),
    Updates(),
    Communities(),
    Calls(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle:
            GoogleFonts.openSans(color: kblack, fontWeight: kFW400),
        selectedLabelStyle:
            GoogleFonts.openSans(color: kblack, fontWeight: kFW700),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kblack,
        unselectedItemColor: kblack,
        currentIndex: _currentIndex,
        backgroundColor: Kwhite,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: _buildIconContainer(
              icon: Icon(
                Icons.chat,
                color: _currentIndex == 0 ? Kgreen : kblack,
              ),
              isSelected: _currentIndex == 0,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: _buildIconContainer(
              icon: Icon(
                Icons.update,
                color: _currentIndex == 1 ? Kgreen : kblack,
              ),
              isSelected: _currentIndex == 1,
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: _buildIconContainer(
              icon: Icon(
                Icons.people,
                color: _currentIndex == 2 ? Kgreen : kblack,
              ),
              isSelected: _currentIndex == 2,
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: _buildIconContainer(
              icon: Icon(
                Icons.call,
                color: _currentIndex == 3 ? Kgreen : kblack,
              ),
              isSelected: _currentIndex == 3,
            ),
            label: 'Calls',
          ),
        ],
        onTap: _onTabTapped,
      ),
    );
  }

  Widget _buildIconContainer({required Widget icon, required bool isSelected}) {
    return Container(
      width: 60,
      height: 35,
      decoration: BoxDecoration(
        color: isSelected ? Kgreen.withOpacity(0.3) : Kwhite,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(8),
      child: icon,
    );
  }
}
