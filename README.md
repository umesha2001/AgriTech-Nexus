# AgriTech-Nexus

A comprehensive mobile application designed to connect agricultural professionals, farmers, experts, and community leaders in a unified platform for sharing knowledge, facilitating communication, and promoting sustainable farming practices.

## Overview

AgriTech-Nexus is a Flutter-based mobile application that provides a seamless communication and community platform for the agricultural sector. The app enables users to connect with government officers, agricultural experts, community leaders, farmers, buyers, and sellers through communities, voice/video calls, and real-time messaging.

## Features

### 1. **Authentication**
- Beautiful landing page with wheat field background
- User registration with profile picture upload
- Secure login system with password visibility toggle
- Password recovery functionality
- Form validation

### 2. **Communities**
- Browse different agricultural communities
- Connect with Government Officers, Agricultural Experts, Community Leaders, Sellers, Buyers, and Farmers
- Search functionality for easy community discovery
- Create new communities
- Color-coded community categories

### 3. **Voice & Video Calls**
- One-to-one voice and video calls
- Tabbed interface (All calls / Missed calls)
- Create and share call links
- Call history with timestamps
- Recent calls list
- Add participants functionality
- Comprehensive call controls (mute, video toggle, screen share, end call)
- Camera flip support

### 4. **Messaging & Chats**
- Real-time text messaging
- Chat list with last message preview
- Unread message badges
- Search functionality for chats
- User avatars with role icons
- Time stamps for messages
- Individual and bot chat screens
- Message input with send button

### 5. **AI ChatBot**
- Agricultural Expert bot for instant help
- Interactive Q&A interface
- Agricultural advice and information
- Real-time message exchange
- Chat history

### 6. **User Profile**
- User profile with avatar
- Quick access menu to Communities, Calls, Chats, and Settings
- Profile customization
- User information display

### 7. **Settings**
- Profile settings management
- Dark mode toggle
- Accessibility options
- Privacy & Safety controls
- Photos & Media settings
- Notifications & Sounds configuration
- Report a problem feature
- Terms & Conditions
- About Us section

### 8. **Dashboard Navigation**
- Intuitive bottom navigation bar with 5 tabs:
  - Communities
  - Chats
  - Calls
  - ChatBot
  - Profile
- Smooth navigation between sections
- Persistent navigation state

## Project Structure

```
agritech_app/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── screens/                  # All screen files
│   │   ├── home_page.dart       # Landing page
│   │   ├── login_page.dart      # Login screen
│   │   ├── signup_page.dart     # Registration screen
│   │   ├── dashboard.dart       # Main dashboard with bottom nav
│   │   ├── communities_page.dart # Communities list
│   │   ├── calls_page.dart      # Calls list with tabs
│   │   ├── chats_page.dart      # Chats list
│   │   ├── chat_bot_page.dart   # AI bot interface
│   │   ├── chat_screen_page.dart # Individual chat
│   │   ├── call_screen_page.dart # Video call interface
│   │   ├── profile_page.dart    # User profile
│   │   └── settings_page.dart   # Settings screen
│   ├── widgets/                  # Reusable widgets
│   │   ├── bottom_nav_bar.dart
│   │   ├── custom_button.dart
│   │   └── custom_textfield.dart
│   └── utils/                    # Utilities and constants
│       ├── constants.dart        # App colors, assets, user types
│       └── theme.dart           # App theme configuration
├── assets/
│   └── images/                   # Image assets
│       └── wheat_field.jpg      # Background image
├── pubspec.yaml                  # Dependencies
└── README.md                     # Project documentation
```

## Technologies Used

- **Flutter SDK**: ^3.0.0
- **Dart**: ^3.0.0
- **Google Fonts**: ^6.1.0 - Custom typography
- **Provider**: ^6.1.1 - State management

## Color Scheme

The app uses an earthy, agricultural-inspired color palette:

- **Primary**: `#8B6E46` (Brown)
- **Secondary**: `#C9B27D` (Light Brown)
- **Accent**: `#5A3921` (Dark Brown)
- **Background**: `#F5F3EF` (Cream)
- **Tab Bar**: `#8DABC4` (Blue-Gray)
- **Navigation**: `#6E573A` (Dark Brown)

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Android SDK / Xcode (for iOS)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/umesha2001/AgriTech-Nexus.git
   cd AgriTech-Nexus/agritech_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### Building for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

## App Flow

1. **Landing Page** → User sees wheat field background with AgriTech logo
2. **Login/Signup** → User authenticates or creates new account
3. **Dashboard** → Main screen with bottom navigation
4. **Communities** → Browse and join agricultural communities
5. **Chats** → Message other users and AI bot
6. **Calls** → Make voice/video calls
7. **Profile** → Manage settings and profile

## Key Features Implementation

### Bottom Navigation
The app uses a custom bottom navigation bar with 5 tabs that persist across the main sections of the app.

### State Management
Provider package is used for efficient state management across the application.

### UI/UX Design
- Material Design principles
- Smooth animations and transitions
- Intuitive navigation flow
- Responsive layouts
- Custom color theme matching agricultural sector

## Future Enhancements

- Push notifications for messages and calls
- Real-time video calling using WebRTC
- File and image sharing in chats
- Community forums and discussions
- Agricultural marketplace integration
- Weather forecasts and farming tips
- Crop disease detection using AI
- Multi-language support
- Offline mode with data sync

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.

## Contact

**Developer**: Umesha
**Repository**: [AgriTech-Nexus](https://github.com/umesha2001/AgriTech-Nexus)

---

**Note**: This is a UI implementation based on the provided designs. Backend integration and real-time features require additional server-side implementation.

