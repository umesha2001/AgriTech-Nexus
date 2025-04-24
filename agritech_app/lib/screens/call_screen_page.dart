import 'package:flutter/material.dart';
import 'dart:async';
import '../utils/constants.dart';

class CallScreenPage extends StatefulWidget {
  final String callerName;
  
  const CallScreenPage({
    super.key, 
    required this.callerName,
  });

  @override
  State<CallScreenPage> createState() => _CallScreenPageState();
}

class _CallScreenPageState extends State<CallScreenPage> {
  bool _isMuted = false;
  bool _isVideoOff = false;
  bool _isMicMuted = false;
  Duration _callDuration = Duration.zero;
  late Timer _timer;
  
  @override
  void initState() {
    super.initState();
    _startTimer();
  }
  
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  
  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _callDuration = Duration(seconds: _callDuration.inSeconds + 1);
      });
    });
  }
  
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.wheatField),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Top section with caller info
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: [
                    // Profile image
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Caller name
                    Text(
                      widget.callerName,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Call duration
                    Text(
                      _formatDuration(_callDuration),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Bottom section with call controls
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: const Color(0xFF6E573A),
                child: Column(
                  children: [
                    // Call control buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Speaker button
                        _buildCallControlButton(
                          icon: Icons.volume_up,
                          isActive: _isMuted,
                          onPressed: () {
                            setState(() {
                              _isMuted = !_isMuted;
                            });
                          },
                        ),
                        
                        // Video button
                        _buildCallControlButton(
                          icon: Icons.videocam,
                          isActive: _isVideoOff,
                          onPressed: () {
                            setState(() {
                              _isVideoOff = !_isVideoOff;
                            });
                          },
                        ),
                        
                        // Microphone button
                        _buildCallControlButton(
                          icon: Icons.mic_off,
                          isActive: _isMicMuted,
                          onPressed: () {
                            setState(() {
                              _isMicMuted = !_isMicMuted;
                            });
                          },
                        ),
                        
                        // End call button
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.call_end,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 20),
                    
                    // Add participant button
                    InkWell(
                      onTap: () {
                        // Add participant functionality
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.group,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Add Participant',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildCallControlButton({
    required IconData icon,
    required bool isActive,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: isActive ? Colors.red : Colors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }
}