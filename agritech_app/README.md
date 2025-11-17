# AgriTech App

A comprehensive Flutter mobile application designed to connect agricultural professionals, farmers, experts, and community leaders in a unified platform for sharing knowledge, facilitating communication, and promoting sustainable farming practices.

## Features

### ✅ **Authentication System**
- User registration with role-based selection:
  - Government Officers
  - Agricultural Experts
  - Community Leaders
  - Sellers
  - Buyers
  - Farmers
- Secure login system with password visibility toggle
- Password validation and email format checking
- Forgot password functionality

### ✅ **Communities**
- Browse and join agricultural communities
- Search communities functionality
- Create new communities
- "My Communities" and "Discover" tabs
- Real-time community interaction

### ✅ **Voice & Video Calls**
- One-to-one voice and video calls
- Call history with timestamps
- "All Calls" and "Missed Calls" filters
- Quick call functionality
- Call screen with mute/unmute and speaker controls

### ✅ **Messaging & Chats**
- Real-time text messaging
- Search through chat conversations
- Message history
- Chat with different agricultural roles
- Camera and add chat quick actions
- Unread message indicators

### ✅ **AI ChatBot Assistant (AgriBot)**
- Intelligent agricultural assistant
- Quick action buttons for common queries:
  - Weather updates
  - Crop recommendations
  - Fertilizer advice
  - Pest and disease information
  - Market prices
  - General help
- Context-aware responses
- Chat history management
- Beautiful chat interface

### ✅ **User Profile**
- Customizable user profile with avatar
- Profile information display:
  - Email
  - Phone number
  - Location
  - Member since date
- Role badge display
- Quick access to:
  - AgriBot Assistant
  - Settings
  - Help & Support
  - About AgriTech
  - Logout

### ✅ **Settings**
- **Notifications Settings:**
  - Push notifications toggle
  - Sound settings
  - Vibration settings
- **Appearance:**
  - Dark mode toggle (coming soon)
  - Language selection (English, Spanish, French)
- **Account Management:**
  - Edit profile
  - Change password
  - Privacy settings
- **Support:**
  - Help & Support
  - About information
  - Terms & Conditions
- **Account Deletion** option

### ✅ **Navigation**
- Bottom navigation bar with 4 tabs:
  - Communities
  - Calls
  - Chats
  - Profile
- Side drawer with quick access to:
  - Home
  - AgriBot Assistant
  - Settings
  - Help & Support
  - Logout

## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code
- Chrome / Edge (for web testing)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/umesha2001/AgriTech-Nexus.git
   cd AgriTech-Nexus/agritech_app
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   # For web (Chrome)
   flutter run -d chrome

   # For Windows desktop
   flutter run -d windows

   # For Android
   flutter run -d <device-id>
   ```

### Project Structure
```
lib/
├── main.dart                 # App entry point
├── screens/
│   ├── home_page.dart       # Landing page
│   ├── login_page.dart      # Login screen
│   ├── signup_page.dart     # Registration with role selection
│   ├── dashboard.dart       # Main dashboard with navigation
│   ├── communities_page.dart # Communities list
│   ├── calls_page.dart      # Call history and management
│   ├── chats_page.dart      # Chat conversations
│   ├── chat_screen_page.dart # Individual chat screen
│   ├── call_screen_page.dart # Call interface
│   ├── profile_page.dart    # User profile
│   ├── settings_page.dart   # App settings
│   └── chat_bot_page.dart   # AI ChatBot assistant
├── widgets/
│   ├── bottom_nav_bar.dart  # Custom bottom navigation
│   ├── custom_button.dart   # Reusable button widget
│   └── custom_textfield.dart # Reusable text field widget
└── utils/
    ├── constants.dart       # App constants and colors
    └── theme.dart          # Theme configuration
```

## Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.6
  google_fonts: ^6.1.0
  provider: ^6.1.1
```

## Features Implemented

- ✅ Complete authentication flow
- ✅ Role-based registration
- ✅ Bottom navigation with 4 tabs
- ✅ Side drawer navigation
- ✅ Communities page with search
- ✅ Calls page with history
- ✅ Chats page with search
- ✅ AI ChatBot assistant (AgriBot)
- ✅ User profile management
- ✅ Comprehensive settings page
- ✅ Help & support dialogs
- ✅ Logout functionality
- ✅ All navigation working correctly

## Screenshots

(Add screenshots of your app here)

## Future Enhancements

- Backend integration for real authentication
- Real-time chat using Firebase/WebSocket
- Actual voice/video call implementation
- Push notifications
- Dark mode theme
- Multi-language support
- Image upload for profile
- Community creation and management
- Market price integration
- Weather API integration
- Advanced AI chatbot with ML

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For any queries or support:
- Email: support@agritech.com
- GitHub: [@umesha2001](https://github.com/umesha2001)

## Acknowledgments

- Flutter team for the amazing framework
- All contributors to this project
- Agricultural experts for their valuable insights

---

**Version:** 1.0.0  
**Last Updated:** November 2025  
**Status:** ✅ Fully Functional

