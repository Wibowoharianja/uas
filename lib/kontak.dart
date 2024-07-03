import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Kontak',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatefulWidget {
  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contacts = [
    Contact('Kellyse Doe', '+6283456789012'),
    Contact('Reuone Smith', '+6287654321759'),
    Contact('Michael Rafael', '+6285485321879'),
    Contact('Emily Abigail', '+6289431456130'),
    Contact('David Brown', '+6285288252344'),
    Contact('Janise Lee', '+6281288959070'),
    Contact('Mark Jowhn', '+6289997876655'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kontak'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Color.fromARGB(255, 169, 214, 240),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 194, 211, 227),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(contacts[index].name[0]), // menampilkan huruf pertama dari nama
            ),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phoneNumber),
            onTap: () {
              // Aksi ketika item kontak ditekan, misalnya menampilkan detail kontak
              _showContactDetails(contacts[index]);
            },
          );
        },
      ),
    );
  }

  void _showContactDetails(Contact contact) {
    // Method untuk menampilkan detail kontak, bisa diimplementasikan sesuai kebutuhan
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(contact.name),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Nomor Telepon: ${contact.phoneNumber}'),
              // tambahkan informasi kontak lainnya di sini
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact(this.name, this.phoneNumber);
}