# AgriTech-Nexus - Quick Start Guide

## 🚀 Getting Started in 3 Steps

### Step 1: Navigate to Project Directory
```bash
cd e:\cap_pro_new\AgriTech-Nexus\agritech_app
```

### Step 2: Install Dependencies (Already done!)
```bash
flutter pub get
```

### Step 3: Run the App
```bash
flutter run
```

## 📱 App Navigation Flow

1. **Start Screen**: Home page with wheat field background
   - Tap anywhere to go to Login

2. **Login**: Enter credentials or click "Sign Up!"
   - Username: (any text)
   - Password: (any text)
   - Click "Login" to enter the app

3. **Main Dashboard**: Bottom navigation with 5 tabs
   - 🏘️ **Communities**: Browse 6 community categories
   - 💬 **Chats**: View chat list with unread badges
   - 📞 **Calls**: All/Missed calls with create link option
   - 🤖 **ChatBot**: Chat with Agricultural Expert bot
   - 👤 **Profile**: Access settings and user options

## 🎯 Key Features to Test

### Communities Tab
- Search for communities
- View 6 user type categories (each with unique color)
- Click add button to create new community

### Chats Tab
- Search for chats
- View chat list with last messages
- See unread message counts
- Tap a chat to open individual conversation

### Calls Tab
- Switch between "All" and "Missed" tabs
- View "Create Call Link" option
- See recent call history
- Make calls by tapping phone icon

### ChatBot Tab
- Type messages to Agricultural Expert bot
- Bot responds automatically after 1 second
- View message timestamps
- Scrollable chat history

### Profile Tab
- View user profile (Sajith Disanayake)
- Navigate to:
  - Communities
  - Calls
  - Chats
  - Settings

### Settings
- Toggle Dark mode
- Access various settings options
- View profile settings

## 🎨 Design Highlights

- **Wheat Field Background**: Login, Signup, and Home pages
- **Brown Earth Tones**: Throughout the app for agricultural theme
- **Icon-Based Avatars**: Each user type has unique icon
- **Tabbed Navigation**: Calls page (All/Missed tabs)
- **Message Bubbles**: Different colors for user vs bot
- **Unread Badges**: Green circles with count on chats

## 📲 Build for Devices

### Android
```bash
flutter build apk --release
```
Output: `build/app/outputs/flutter-apk/app-release.apk`

### iOS
```bash
flutter build ios --release
```
Then open Xcode to archive and distribute

## 🐛 Troubleshooting

### Issue: Dependencies not installed
**Solution:**
```bash
flutter pub get
```

### Issue: No connected device
**Solution:**
- Connect Android device via USB
- Enable USB debugging
- OR use Android emulator
- OR use iOS simulator (Mac only)

### Issue: Hot reload not working
**Solution:**
Press `r` in terminal or save a file to trigger hot reload

## 📞 Support

For any issues or questions:
- Check the README.md for detailed documentation
- Review IMPLEMENTATION_SUMMARY.md for complete feature list
- All screens are already implemented and working

## ✅ Quick Test Checklist

- [ ] App launches successfully
- [ ] Home page displays wheat field
- [ ] Login page accepts input
- [ ] Signup page validates fields
- [ ] Dashboard shows all 5 tabs
- [ ] Communities list displays 6 categories
- [ ] Calls page shows tabs and recent calls
- [ ] Chats page displays chat list
- [ ] ChatBot responds to messages
- [ ] Profile page shows user info
- [ ] Settings page has all options
- [ ] Bottom navigation switches tabs

---

**Ready to go! Just run:** `flutter run`

Enjoy your AgriTech-Nexus app! 🌾📱
