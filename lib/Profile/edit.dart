import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  static const routeName = '/editprofile';

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _displayNameController;
  late String _currentDisplayName;

  @override
  void initState() {
    super.initState();
    _displayNameController = TextEditingController();
    _loadCurrentDisplayName();
  }

  Future<void> _loadCurrentDisplayName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _currentDisplayName = prefs.getString('displayName') ?? '';
      _displayNameController.text = _currentDisplayName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _displayNameController,
                decoration: const InputDecoration(labelText: 'New Display Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a display name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saveChanges,
                child: const Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveChanges() async {
    if (_formKey.currentState!.validate()) {
      // Save the new display name to SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('displayName', _displayNameController.text);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Changes saved')),
      );
    }
  }
}
