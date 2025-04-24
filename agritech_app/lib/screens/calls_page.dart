import 'package:flutter/material.dart';
import 'package:agritech_app/utils/constants.dart';
import 'package:agritech_app/screens/call_screen_page.dart'; // Add this import

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.wheatField),
          fit: BoxFit.cover,
          opacity: 0.8,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.tabBarBackground,
          title: const Text(
            'AgriTech',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Open drawer or menu
              Scaffold.of(context).openDrawer();
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Open notifications
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Calls',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                      decoration: BoxDecoration(
                        color: AppColors.card.withAlpha(230),
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20),
                          right: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                      decoration: BoxDecoration(
                        color: AppColors.card.withAlpha(230),
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20),
                          right: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Missed',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.card.withAlpha(230),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.call,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        // Start a new call
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CallScreenPage(callerName: "New Call"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.card.withAlpha(230),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.link, color: Colors.black54),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Call Link',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Share a link for your call',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recent',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildCallItem(context, 'Government Officers'),
                  _buildCallItem(context, 'Agricultural Expert'),
                  _buildCallItem(context, 'Farmer'),
                  _buildCallItem(context, 'Community Leader'),
                  _buildCallItem(context, 'Seller'),
                  _buildCallItem(context, 'Buyer'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCallItem(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.card.withAlpha(230),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.call, color: AppColors.accent),
          onPressed: () {
            // Make call directly
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CallScreenPage(callerName: title),
              ),
            );
          },
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        onTap: () {
          // View call details or make call
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CallScreenPage(callerName: title),
            ),
          );
        },
      ),
    );
  }
}