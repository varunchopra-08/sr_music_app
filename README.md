# 🎵 S.Rocks.Music - Home Screen Clone

This Flutter app is a technical assignment to replicate the "Home Screen" from the **S.Rocks.Music** app. It showcases clean UI, Firebase Firestore integration, and MVVM architecture using Provider.

---

## ⚙️ Features

- ✅ **Fully Responsive UI** (per Figma)
- ✅ **Dynamic Cards** (title, icon, description from Firestore)
- ✅ **MVVM Architecture** using `Provider`
- ✅ **Firebase Firestore** integration
- ✅ **Navigation** to detail screen on card tap
- ✅ **Clean folder structure**
- ✅ **Bottom Navigation Bar** (UI only)

---

## 🔧 Folder Structure


```
lib/
├── models/
│   └── service_model.dart          # Model for service data
├── repository/
│   └── service_repository.dart     # Firestore interaction logic
├── screens/
│   ├── detail_screen.dart          # Detail view for service card
│   └── home_screen.dart            # Main HomeScreen (UI + ViewModel access)
├── view_models/
│   └── service_view_model.dart     # ViewModel for managing state
├── widgets/
│   ├── bottomNavBar.dart           # Reusable bottom navigation bar
│   ├── hero_section.dart           # Top banner UI
│   └── service_card.dart           # UI widget for each service card
├── firebase_options.dart           # Firebase auto-generated config
└── main.dart                       # App entry point
```


---

## 🛠️ Firebase Setup

1. Set up a Firebase project.
2. Add a `services` collection in **Firestore** with documents containing:
    - `title`: String
    - `description`: String
    - `icon`: String (local asset path like `assets/icons/production.png`)
    - `bgImage`: String (local asset path like `assets/images/bg.png`)'
    - `bgAlignment`: String (one of 'topLeft', 'topRight', 'bottomLeft', 'bottomRight', 'topCenter', 'bottomCenter', 'centerRight', 'centerLeft')
3. Add your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) to the project.

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.0
  cloud_firestore: ^4.9.0
  firebase_core: ^2.25.4
````
▶️ How to Run
Clone the repo.

Run flutter pub get.

Ensure Firebase is correctly initialized (main.dart is configured).

Run the app on an emulator or physical device.

📹 Screen Recording
(https://drive.google.com/file/d/1QGbo1LSrBrAXnJhv9OCRq6c3jaXNGBYk/view?usp=sharing)


🧑‍💻 Author
Your Name – Varun Chopra
https://www.linkedin.com/in/varun-chopra08/
