import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> recentCalls = [
    {
      'name': 'Government Officers',
      'icon': Icons.account_balance,
      'time': '10:30 AM',
    },
    {
      'name': 'Agricultural Expert',
      'icon': Icons.agriculture,
      'time': 'Yesterday',
    },
    {
      'name': 'Farmer',
      'icon': Icons.person,
      'time': '2 days ago',
    },
    {
      'name': 'Community Leader',
      'icon': Icons.groups,
      'time': '3 days ago',
    },
    {
      'name': 'Seller',
      'icon': Icons.store,
      'time': '5 days ago',
    },
    {
      'name': 'Buyer',
      'icon': Icons.shopping_cart,
      'time': 'Last week',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      leading: const Icon(Icons.help),
                      title: const Text('Help'),
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
            icon: const Icon(Icons.call, color: Colors.white),
            onPressed: () {
              // Show dial pad or contact picker
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Make a Call'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.dialpad),
                        title: const Text('Dial Pad'),
                        onTap: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Opening dial pad...')),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.contacts),
                        title: const Text('From Contacts'),
                        onTap: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Opening contacts...')),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.video_call),
                        title: const Text('Video Call'),
                        onTap: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Starting video call...')),
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
              'Calls',
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
                  // Tabs
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TabBar(
                            controller: _tabController,
                            indicator: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: AppColors.text,
                            dividerColor: Colors.transparent,
                            tabs: const [
                              Tab(text: 'All'),
                              Tab(text: 'Missed'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.primary),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: const Icon(
                            Icons.add_call,
                            color: AppColors.primary,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Create Call Link Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.link, color: AppColors.primary),
                          SizedBox(width: 12),
                          Text(
                            'Create Call Link',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.text,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Share a link for your call',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.lightText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Recent',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.text,
                        ),
                      ),
                    ),
                  ),
                  // Recent Calls List
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        _buildCallsList(recentCalls),
                        _buildCallsList(recentCalls.take(2).toList()),
                      ],
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

  Widget _buildCallsList(List<Map<String, dynamic>> calls) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: calls.length,
      itemBuilder: (context, index) {
        final call = calls[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.primary.withOpacity(0.2),
                child: Icon(
                  call['icon'],
                  color: AppColors.primary,
                ),
              ),
              title: Text(
                call['name'],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                call['time'],
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.lightText,
                ),
              ),
              trailing: const Icon(
                Icons.phone,
                color: AppColors.primary,
              ),
            ),
          ),
        );
      },
    );
  }
}
