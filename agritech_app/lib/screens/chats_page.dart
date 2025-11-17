import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'chat_screen_page.dart';
import 'chat_bot_page.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chats = [
      {
        'name': 'Government Officer',
        'icon': Icons.account_balance,
        'lastMessage': 'Thanks for the update',
        'time': '10:30',
        'unread': 2,
      },
      {
        'name': 'Agricultural Expert',
        'icon': Icons.agriculture,
        'lastMessage': 'See you tomorrow',
        'time': '09:15',
        'unread': 0,
      },
      {
        'name': 'Community Leader',
        'icon': Icons.groups,
        'lastMessage': 'Meeting at 3 PM',
        'time': 'Yesterday',
        'unread': 1,
      },
      {
        'name': 'Seller',
        'icon': Icons.store,
        'lastMessage': 'Order confirmed',
        'time': 'Yesterday',
        'unread': 0,
      },
      {
        'name': 'Buyer',
        'icon': Icons.shopping_cart,
        'lastMessage': 'Payment received',
        'time': '2 days ago',
        'unread': 0,
      },
      {
        'name': 'Community Leader',
        'icon': Icons.groups,
        'lastMessage': 'New schedule',
        'time': '3 days ago',
        'unread': 0,
      },
      {
        'name': 'Farmer',
        'icon': Icons.person,
        'lastMessage': 'Harvest ready',
        'time': '3 days ago',
        'unread': 3,
      },
      {
        'name': 'Agricultural Expert',
        'icon': Icons.agriculture,
        'lastMessage': 'Consultation available',
        'time': 'Last week',
        'unread': 0,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF8B7355),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B7355),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Show navigation menu
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Menu'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('Home'),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      leading: const Icon(Icons.support_agent),
                      title: const Text('ChatBot'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatBotPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () => Navigator.pop(context),
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
        title: const Text(
          'AgriTech',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {
              // Open camera to take picture
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Camera'),
                  content: const Text('Opening camera to take a picture...\n\nNote: Camera functionality requires camera package integration.'),
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
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              // Upload documents
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Upload Document'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.photo_library),
                        title: const Text('From Gallery'),
                        onTap: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Opening gallery...')),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.insert_drive_file),
                        title: const Text('From Files'),
                        onTap: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Opening file picker...')),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.description),
                        title: const Text('PDF Document'),
                        onTap: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Select PDF document...')),
                          );
                        },
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xFF8B7355),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: const Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search, color: Colors.grey),
                        filled: true,
                        fillColor: AppColors.searchBar,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Chats List
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: chats.length,
                      itemBuilder: (context, index) {
                        final chat = chats[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              onTap: () {
                                // Navigate to individual chat screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatScreenPage(
                                      userName: chat['name'],
                                      userIcon: chat['icon'],
                                    ),
                                  ),
                                );
                              },
                              leading: CircleAvatar(
                                backgroundColor: AppColors.primary.withOpacity(0.2),
                                child: Icon(
                                  chat['icon'],
                                  color: AppColors.primary,
                                ),
                              ),
                              title: Text(
                                chat['name'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              subtitle: Text(
                                chat['lastMessage'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: AppColors.lightText,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    chat['time'],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.lightText,
                                    ),
                                  ),
                                  if (chat['unread'] > 0)
                                    Container(
                                      margin: const EdgeInsets.only(top: 4),
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        chat['unread'].toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
