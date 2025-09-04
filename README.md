# Shopify Flutter App

A localized e-commerce mobile application built with **Flutter**, featuring multi-language support (English & Arabic), product listings, hot offers, and a modern UI.

---

## 📖 Project Overview

This project is a **shop demo app** where users can:

- Browse featured collections.
- View products with images, prices, and details.
- Add items to a cart with a localized confirmation message.
- See hot offers and promotions.
- Switch between **English** and **Arabic** dynamically.

The app uses Flutter's **internationalization (i18n)** with `flutter_localizations` and generated `AppLocalizations` for string translations.

---

## ✨ Features

- 🌍 **Multi-language support (English & Arabic)**  
- 🛒 **Product Grid & Add to Cart** with SnackBar feedback  
- 🔥 **Hot Offers Section**  
- 📱 **Featured Products Carousel with Indicators**  
- 🎨 **Custom Theming** (consistent fonts, colors, rounded corners)  
- 🔄 **Dynamic Locale Toggle** (switch between English and Arabic)  
- 🖼️ **Local + Network Images** in collections  

---

## 🚀 Setup Instructions

### 1. Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (latest stable version)
- Dart (comes with Flutter)
- Android Studio / VS Code with Flutter plugin

### 2. Clone the Repository
- git clone [https://github.com/Merna-Hesham/shopping_project](https://github.com/Merna-Hesham/shopping_project).git
cd shopping_projecy

### 3. Install Dependencies
- flutter pub get

### 4. Generate Localization Files
- flutter gen-l10n

### 5. Run the App
- flutter run

## 🌐 Localization Example
{
  "appName": "Shopify",
  "signIn": "Sign In",
  "signUp": "Sign Up",
  "addedToCart": "{product} added to cart",
  "@addedToCart": {
    "placeholders": {
      "product": { "type": "String" }
    }
  }
}
{
  "appName": "شوبيفاي",
  "signIn": "تسجيل الدخول",
  "signUp": "إنشاء حساب",
  "addedToCart": "تمت إضافة {product} إلى السلة",
  "@addedToCart": {
    "placeholders": {
      "product": { "type": "String" }
    }
  }
}
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text(AppLocalizations.of(context)!.addedToCart(productName)))
);

## 🛠️ Tech Stack
- Flutter (Dart)
- Material Design Widgets
- flutter_localizations for i18n
- smooth_page_indicator for carousel

### Welcome Screen 
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/aa9b6925-c71b-4059-a209-377529f941b6" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/6e2a9182-ca8c-4f26-a0f8-ddfaef3f8b4d" />

### Sign-Up Screen
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/bcac5b8e-7994-4a37-a877-1960507757a6" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/6497e400-0998-44b2-8321-0975e2973bf5" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/78c054ea-97db-40fa-94e4-b3edef89d071" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/4676c650-0fa4-4205-a1c8-79b7ad50f2f9" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/9751538e-65f0-4273-9a03-412a851c8f18" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/0b3952c2-ffb2-4187-a837-a4d49f2f4472" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/3f9776ef-4c32-446c-81c4-ae724f826071" />

### Sign-In Screen
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/d04fadd3-3448-4464-9f81-600b06feae16" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/9d637d8a-4701-4be7-b84a-16b8b1fc5d43" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/4153a056-a950-4b45-be35-320ff4d5ac00" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/fbfd5106-03dd-4ef8-8d02-1b86ad4083b7" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/f61754b9-ebf3-4a2c-ac33-843f22ce27e9" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/9b700480-0953-4c37-9728-f3c659deba88" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/51db2dfd-8fa4-430d-80bd-d1e1537a9c1c" />

### Home Screen
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/9107b537-d940-4f13-9124-a34665431a60" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/6bac07cc-a438-490c-9fe9-5d148c2b8a71" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/21132434-957f-4172-8e78-36c48082d525" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/bf9fb81e-0b66-42c0-a77f-125c3f39e69d" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/2efe9208-3b31-4618-abf5-d3f68233d02f" />
<img width="1080" height="2400" alt="Image" src="https://github.com/user-attachments/assets/78c4a395-888a-41e4-a7d1-52ad9d5bf801" />

### Developed by
- Merna Hesham
