import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D3D3D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D3D3D),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Done',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Section
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white.withOpacity(0.2),
              child: const Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Sajith Disanayake',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            // Settings List
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF2D2D2D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    _buildSettingsOption(
                      icon: Icons.person_outline,
                      title: 'Profile Settings',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Profile Settings'),
                            content: const Text('Edit your profile information, change photo, and update personal details.'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.dark_mode,
                      title: 'Dark mode',
                      trailing: Switch(
                        value: _darkMode,
                        onChanged: (value) {
                          setState(() {
                            _darkMode = value;
                          });
                        },
                        activeColor: AppColors.primary,
                      ),
                      onTap: () {
                        setState(() {
                          _darkMode = !_darkMode;
                        });
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.accessibility,
                      title: 'Accessibility',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Accessibility'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SwitchListTile(
                                  title: const Text('Large Text'),
                                  value: false,
                                  onChanged: (value) {},
                                ),
                                SwitchListTile(
                                  title: const Text('High Contrast'),
                                  value: false,
                                  onChanged: (value) {},
                                ),
                                SwitchListTile(
                                  title: const Text('Screen Reader'),
                                  value: false,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Done'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.lock_outline,
                      title: 'Privacy & Safety',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Privacy & Safety'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.visibility_off),
                                  title: const Text('Block Users'),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: const Icon(Icons.lock),
                                  title: const Text('Change Password'),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: const Icon(Icons.security),
                                  title: const Text('Two-Factor Auth'),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: const Icon(Icons.delete),
                                  title: const Text('Delete Account'),
                                  onTap: () {},
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.photo_library_outlined,
                      title: 'Photos & Media',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Photos & Media'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SwitchListTile(
                                  title: const Text('Auto-download Media'),
                                  subtitle: const Text('On WiFi only'),
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                SwitchListTile(
                                  title: const Text('Save to Gallery'),
                                  value: false,
                                  onChanged: (value) {},
                                ),
                                ListTile(
                                  title: const Text('Clear Cache'),
                                  trailing: const Text('124 MB'),
                                  onTap: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Cache cleared')),
                                    );
                                  },
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Done'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.notifications_outlined,
                      title: 'Notifications & Sounds',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Notifications & Sounds'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SwitchListTile(
                                  title: const Text('Push Notifications'),
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                SwitchListTile(
                                  title: const Text('Message Sounds'),
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                SwitchListTile(
                                  title: const Text('Call Notifications'),
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                SwitchListTile(
                                  title: const Text('Vibration'),
                                  value: false,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Done'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.help_outline,
                      title: 'Report a problem',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Report a Problem'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Describe the issue...',
                                    border: OutlineInputBorder(),
                                  ),
                                  maxLines: 4,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Your feedback helps us improve AgriTech',
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Problem report submitted')),
                                  );
                                },
                                child: const Text('Submit'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.description_outlined,
                      title: 'Terms & Conditions',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Terms & Conditions'),
                            content: const SingleChildScrollView(
                              child: Text(
                                'AgriTech-Nexus Terms of Service\n\n'
                                '1. Acceptance of Terms\n'
                                'By using AgriTech-Nexus, you agree to these terms.\n\n'
                                '2. User Responsibilities\n'
                                'Users must provide accurate information and maintain account security.\n\n'
                                '3. Privacy Policy\n'
                                'We protect your data and privacy as outlined in our Privacy Policy.\n\n'
                                '4. Community Guidelines\n'
                                'Respect others, share knowledge responsibly, and follow agricultural best practices.\n\n'
                                '5. Intellectual Property\n'
                                'Content shared remains the property of respective owners.\n\n'
                                'Last updated: November 2025',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildSettingsOption(
                      icon: Icons.info_outline,
                      title: 'About Us',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('About AgriTech-Nexus'),
                            content: const SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'AgriTech-Nexus',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Version: 1.0.0'),
                                  SizedBox(height: 15),
                                  Text(
                                    'A comprehensive mobile platform connecting agricultural professionals, farmers, experts, and community leaders.',
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Features:',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('• Community networking'),
                                  Text('• Voice & video calls'),
                                  Text('• Real-time messaging'),
                                  Text('• AI ChatBot assistance'),
                                  Text('• Agricultural expertise sharing'),
                                  SizedBox(height: 15),
                                  Text('© 2025 AgriTech-Nexus'),
                                  Text('All rights reserved.'),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsOption({
    required IconData icon,
    required String title,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF4A4A4A),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              trailing ?? const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
