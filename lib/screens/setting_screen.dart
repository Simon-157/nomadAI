import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Account Settings"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Account Information"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // TODO:  Navigate to Account Information page
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text("Notifications"),
                trailing: Switch(
                  value: true,
                  onChanged: (bool value) {
                    //TODO: Handle notification preference change
                  },
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text("Language"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  //TODO:  Navigate to Language selection page
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Privacy Policy"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // TODO:  Navigate to Privacy Policy page
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text("Help & Support"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // TODO: Navigate to Help & Support page
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text("About Us"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // TODO: Navigate to About Us page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

