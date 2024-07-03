import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tampilan Email',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmailScreen(),
    );
  }
}

class Email {
  final String sender;
  final String subject;
  final String body;

  Email({required this.sender, required this.subject, required this.body});
}

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  TextEditingController emailController = TextEditingController();
  String emailAddress = '';
  List<Email> emails = []; // List untuk menyimpan daftar email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kirim Email'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Alamat Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {
                  emailAddress = value;
                });
              },
              onSubmitted: (value) {
                _sendEmail();
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _sendEmail();
              },
              child: Text('Kirim Email'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: emails.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildEmailItem(emails[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailItem(Email email) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(email.sender[0]), // Menggunakan inisial pengirim untuk avatar
      ),
      title: Text(email.sender),
      subtitle: Text(email.subject),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // Implementasi logika untuk menghapus email
              setState(() {
                emails.remove(email);
              });
            },
          ),
        ],
      ),
      onTap: () {
        // Implementasi tindakan ketika item email ditekan
        // Contoh: membuka email atau menampilkan detail
      },
    );
  }

  void _sendEmail() {
    if (emailAddress.isNotEmpty) {
      // Menambahkan email baru ke daftar
      setState(() {
        emails.add(
          Email(
            sender: 'You', // Sebagai contoh, sender diatur sebagai 'You'
            subject: 'Subject Email',
            body: 'Isi email yang panjang dan informatif...',
          ),
        );
        emailAddress = ''; // Mengosongkan field alamat email setelah dikirim
        emailController.clear(); // Membersihkan input field
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alamat Email Kosong'),
            content: Text('Mohon isi alamat email terlebih dahulu.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
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

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
