import 'package:flutter/material.dart';
import 'package:frontend/bantuandanmasukan.dart';
import 'package:frontend/email.dart';
import 'package:frontend/favorit.dart';
import 'package:frontend/hurupkecil.dart';
import 'package:frontend/kalender.dart';
import 'package:frontend/kontak.dart';
import 'package:frontend/matematika.dart';
import 'package:frontend/membaca.dart';
import 'package:frontend/menulis.dart';
import 'package:frontend/model/guru.dart';
import 'package:frontend/setelan.dart';
import 'package:frontend/sukukata.dart';

void main() {
  runApp(const MaterialApp(
    home: Homescrean(),
  ));
}

enum DrawerSelection { utama, sosial, penting }

class Homescrean extends StatefulWidget {
  const Homescrean({super.key});

  @override
  State<Homescrean> createState() => _HomescreanState();
}

class _HomescreanState extends State<Homescrean> {
  DrawerSelection _selectedDrawer = DrawerSelection.utama;

  List<AppBar> appBarList = [
    AppBar(
      backgroundColor: const Color.fromARGB(255, 54, 107, 160),
      foregroundColor: Colors.white,
      title: const Text('Masbroku'),
      actions: [
        const Icon(
          Icons.account_circle_rounded,
          size: 50,
        ),
      ],
    ),
    AppBar(
      backgroundColor: const Color.fromARGB(255, 54, 107, 160),
      foregroundColor: Colors.white,
      title: const Text('Masbroku'),
      actions: [
        const Icon(Icons.account_circle_rounded, size: 50),
      ],
    ),
    AppBar(
      backgroundColor: const Color.fromARGB(255, 54, 107, 160),
      foregroundColor: Colors.white,
      title: const Text('Masbroku'),
      actions: [
        const Icon(Icons.account_circle_rounded, size: 50),
      ],
    ),
  ];

  final List<String> imageUrls = [
    'https://4.bp.blogspot.com/-TeONeIZUy4E/TvKx6yQQ2II/AAAAAAAAAAg/q8GDy2kKZIE/s1600/COVER++CT+2.jpg',
    'https://th.bing.com/th/id/OIP.YzY-POu5Cm8k0O1y09x6AgAAAA?w=450&h=450&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.h04FUd5KKVygeZkiOr5_ngHaKh?pid=ImgDet&w=192&h=272&c=7&dpr=1,3',
    'https://th.bing.com/th/id/OIP.ALj3llxylkxsP24lE41eZgHaKH?pid=ImgDet&w=192&h=261&c=7&dpr=1,3',
    'https://th.bing.com/th/id/OIP.iuKR78CB62AmRymPs8sL5gAAAA?pid=ImgDet&w=192&h=259&c=7&dpr=1,3',
    'https://th.bing.com/th/id/OIP.mJVSHgK-FlXriISeSklpIwHaHa?w=185&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  ];
  List<bool> favoriteStatus = List.generate(6, (index) => false);

  List<Guru> favorites_guru = [];
  List<int> favorite = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: appBarList[_selectedDrawer.index],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 107, 160),
                ),
                child: Center(
                  child: Text(
                    "Let's Study",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              ListTile(
                title: const Text("Utama"),
                leading: const Icon(Icons.fullscreen_exit),
                selected: _selectedDrawer == DrawerSelection.utama,
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {
                  setState(() {
                    _selectedDrawer = DrawerSelection.utama;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: const Text("Sosial"),
                leading: const Icon(Icons.notifications_active_outlined),
                selected: _selectedDrawer == DrawerSelection.sosial,
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {
                  setState(() {
                    _selectedDrawer = DrawerSelection.sosial;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: const Text("Favorite"),
                leading: const Icon(Icons.favorite_border),
                selected: _selectedDrawer == DrawerSelection.penting,
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {
                  setState(() {
                    _selectedDrawer = DrawerSelection.penting;
                    Route route = MaterialPageRoute(
                        builder: (context) =>
                            FavoriteScreen(favorites_guru: favorites_guru));
                    Navigator.push(context, route);
                  });
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("All Labels",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              ListTile(
                title: const Text("Jadwal"),
                leading: const Icon(Icons.schedule_outlined),
                onTap: () {
                  //     Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => BantuanScreen()),
                  // );
                },
              ),
              ListTile(
                title: const Text("Email"),
                leading: const Icon(Icons.email_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmailScreen()),
                  );
                },
              ),
              ListTile(
                title: const Text("Kalender"),
                leading: const Icon(Icons.calendar_month_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KalenderScreen()),
                  );
                },
              ),
              ListTile(
                title: const Text("Kontak"),
                leading: const Icon(Icons.account_circle_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactListScreen()),
                  );
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Aplikasi Google",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              ListTile(
                title: const Text("Setelan"),
                leading: const Icon(Icons.settings_cell_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
              ListTile(
                title: const Text("Bantuan & masukan"),
                leading: const Icon(Icons.help_outline_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BantuanScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Mari belajar online dengan guru berpengalaman \n dan membaca buku dan menonton video pembelajaran",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 169, 204, 239),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Let's Study",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 95, 162, 207),
                          ),
                        ),
                      ])),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 169, 204, 239),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hurufkecil()),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sukukata()),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Membaca()),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Menulis()),
                            );
                            break;
                          case 4:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Matematika()),
                            );
                            break;
                        }
                      },
                      child: Stack(
                        children: [
                          Center(
                            child: Image.network(
                              imageUrls[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  padding: const EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
