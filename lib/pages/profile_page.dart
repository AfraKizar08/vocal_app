
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _openSettingsBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return _buildSettingsContent();
      },
    );
  }

  Widget _buildSettingsContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Settings',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          _buildSettingOption(
            icon: Icons.edit,
            title: 'Edit Profile',
            subtitle: 'Update your personal information',
            onTap: () {
              Navigator.pop(context);
              // Handle edit profile action
            },
          ),
          _buildSettingOption(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Manage your notifications',
            onTap: () {
              Navigator.pop(context);
              // Handle notifications action
            },
          ),
          _buildSettingOption(
            icon: Icons.lock,
            title: 'Privacy Settings',
            subtitle: 'Adjust your privacy preferences',
            onTap: () {
              Navigator.pop(context);
              // Handle privacy settings action
            },
          ),
          _buildSettingOption(
            icon: Icons.color_lens,
            title: 'Theme',
            subtitle: 'Switch between light and dark modes',
            onTap: () {
              Navigator.pop(context);
              // Handle theme action
            },
          ),
          _buildSettingOption(
            icon: Icons.help_outline,
            title: 'Help & Support',
            subtitle: 'Get assistance or contact support',
            onTap: () {
              Navigator.pop(context);
              // Handle help & support action
            },
          ),
          _buildSettingOption(
            icon: Icons.logout,
            title: 'Logout',
            subtitle: 'Sign out of your account',
            onTap: () {
              Navigator.pop(context);
              // Handle logout action
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.deepPurple.withOpacity(0.2),
        child: Icon(icon, color: Colors.deepPurple),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Your Profile',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: _openSettingsBottomSheet,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundColor: Colors.deepPurple,
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 70, color: Colors.deepPurple),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'john.doe@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            const Text(
              '+1 234 567 890',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
