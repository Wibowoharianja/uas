import 'package:flutter/material.dart';

class MateriSmp1 extends StatefulWidget {
  const MateriSmp1({Key? key});

  @override
  State<MateriSmp1> createState() => _MateriSmp1State();
}

class _MateriSmp1State extends State<MateriSmp1> {
  int _selectedIndex = 0;
  bool item_1 = false;
  bool item_2 = false;
  TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Materi 3 SMP",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Color.fromARGB(255, 169, 214, 240),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 54, 107, 160),
      body: _getBodyWidget(),
    );
  }

  Widget _getBodyWidget() {
    switch (_selectedIndex) {
      case 0:
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
              ),
            ),
            Expanded(
              child: GridView.extent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 20,
                mainAxisSpacing: 80,
                padding: EdgeInsets.all(20),
                children: [
                  Items(
                    gambar: 'smp1.png',
                    nama: 'Matematika',
                    status: item_1,
                    press: () {},
                  ),
                  Items(
                    gambar: 'smp1.1.png',
                    nama: 'IPA (Ilmu pengetahuan alam)',
                    status: item_2,
                    press: () {},
                  ),
                  Items(
                    gambar: 'smp1.2.png',
                    nama: 'IPS (Ilmu pengetahuan sosial)',
                    status: item_1,
                    press: () {},
                  ),
                  Items(
                    gambar: 'smp1.3.png',
                    nama: 'Bahasa indonesia',
                    status: item_1,
                    press: () {},
                  ),
                  Items(
                    gambar: 'smp1.4.png',
                    nama: 'Bahasa inggris',
                    status: item_1,
                    press: () {},
                  ),
                  Items(
                    gambar: 'smp1.5.png',
                    nama: 'PPKN (Pendidikan pancasila & kewarganegaraan)',
                    status: item_1,
                    press: () {},
                  ),
                ].where((item) {
                  final itemTitle = item.nama.toLowerCase();
                  final searchText = _searchText.toLowerCase();
                  return itemTitle.contains(searchText);
                }).toList(),
              ),
            ),
          ],
        );
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {}
    });
  }
}

class Items extends StatelessWidget {
  final String gambar;
  final String nama;
  final bool status;
  final Function()? press;

  const Items({
    Key? key,
    required this.gambar,
    required this.nama,
    required this.status,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: status ? Colors.grey : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              gambar,
              height: 150,
              width: 230,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              nama,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
