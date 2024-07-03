import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BantuanScreen(),
  ));
}

class BantuanScreen extends StatefulWidget {
  @override
  _BantuanScreenState createState() => _BantuanScreenState();
}

class _BantuanScreenState extends State<BantuanScreen> {
  bool _notificationsEnabled = true;
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Notifikasi'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          ListTile(
            title: Text('Bahasa'),
            subtitle: Text(_selectedLanguage),
            onTap: () {
              _showLanguageDialog();
            },
          ),
          Divider(),
          ListTile(
            title: Text('Tentang Aplikasi'),
            onTap: () {
              _showAboutDialog(context);
            },
          ),
          ListTile(
            title: Text('Bantuan & Masukan'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpAndFeedbackScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Bahasa'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile<String>(
                title: Text('English'),
                value: 'English',
                groupValue: _selectedLanguage,
                onChanged: (String? value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile<String>(
                title: Text('Bahasa Indonesia'),
                value: 'Bahasa Indonesia',
                groupValue: _selectedLanguage,
                onChanged: (String? value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationName: 'Aplikasi Belajar',
      applicationVersion: '1.0.0',
      applicationIcon: Icon(Icons.school),
      children: [
        Text('Aplikasi ini membantu Anda belajar dengan lebih efektif dan efisien.'),
      ],
    );
  }
}

class HelpAndFeedbackScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan & Masukan'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jika Anda memiliki pertanyaan atau masukan, silakan isi formulir di bawah ini:'),
              SizedBox(height: 20),
              TextFormField(
                controller: _feedbackController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Anda',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukan tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Simpan atau kirim masukan
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Terima kasih atas masukan Anda!')),
                      );
                      _feedbackController.clear();
                    }
                  },
                  child: Text('Kirim'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
