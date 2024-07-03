import 'package:flutter/material.dart';
import 'package:frontend/profil_guru.dart';
import 'package:frontend/model/guru.dart';

class FavoriteScreen extends StatefulWidget {
  final List<Guru> favorites_guru;
  const FavoriteScreen({super.key, required this.favorites_guru});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorites Guru"),
          backgroundColor: Colors.blue[900],
        foregroundColor: Color.fromARGB(255, 169, 214, 240),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 194, 211, 227),
        body: Padding(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: widget.favorites_guru.length,
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        ListTile(
                            onTap: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => Detailguru(
                                        guru: Guru(
                                          name:
                                              widget.favorites_guru[index].name,
                                          description: widget
                                              .favorites_guru[index]
                                              .description,
                                          important: widget
                                              .favorites_guru[index].important,
                                          mapel: widget
                                              .favorites_guru[index].mapel,
                                          image: widget
                                              .favorites_guru[index].image,
                                          opening: widget
                                              .favorites_guru[index].opening,
                                          rating: widget
                                              .favorites_guru[index].rating,
                                        ),
                                      ));
                              Navigator.push(context, route);
                            },
                            subtitle: Text(
                                "Buka ${widget.favorites_guru[index].opening} Rating ${widget.favorites_guru[index].rating}"),
                            title: Text(widget.favorites_guru[index].name),
                            leading: Image(
                              image: NetworkImage(
                                  widget.favorites_guru[index].image[0]),
                              width: 100,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  );
                })));
  }
}
