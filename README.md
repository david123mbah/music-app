# QuikBite Food Delivery App

QuikBite is a Flutter-based mobile application for food delivery, allowing users to browse menus, place orders, track deliveries, and manage their accounts.

![QuikBite Login Screen](quikbite-login-screen.png)

## Features

- User authentication (Sign Up / Sign In)
- Browse restaurant menus and dishes
- Place food orders
- Real-time order tracking
- Contact support via WhatsApp
- Dark mode UI

## Screenshots

### Login Screen
![QuikBite Login Screen](quikbite-login-screen.png)

The login screen features a clean, dark-themed UI with:
- App logo (delivery person on a bicycle)
- "QuikBite" app name
- Email and Password input fields
- "Sign In" button
- "Don't have an Account? Sign Up" option

### Order Screen
![QuikBite Order Screen](quikbite-order-screen.png)

The order screen showcases:
- "ORDER NOW" header with a friendly emoji
- Delivery address input
- Delivery fee and estimated delivery time
- Food categories (dish, salads, sides, desert, drink)
- List of food items with images, names, prices, and descriptions
- Dark theme for comfortable viewing

### Contact Us Screen
![QuikBite Contact Us Screen](quikbite-contact-screen.png)

The contact screen includes:
- "Contact Us" header
- Illustration of a person interacting with a chatbot
- Contact information (phone and email)
- "Chat with us on WhatsApp" button

## Getting Started

### Prerequisites

- Flutter (Channel stable, 3.10.0 or higher)
- Dart SDK version: 3.0.0 or higher

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/quikbite-flutter-app.git
   ```

2. Navigate to the project directory:
   ```
   cd quikbite-flutter-app
   ```

3. Get Flutter packages:
   ```
   flutter pub get
   ```

4. Run the app:
   ```
   flutter run
   ```

## Project Structure

```
lib/
├── models/
├── screens/
│   ├── auth/
│   ├── home/
│   ├── order/
│   └── profile/
├── services/
├── utils/
├── widgets/
└── main.dart
```

## Dependencies

- flutter: ^3.10.0
- cupertino_icons: ^1.0.2
- http: ^0.13.3
- provider: ^6.0.0
- shared_preferences: ^2.0.7
- url_launcher: ^6.0.12

## Configuration

1. Rename `.env.example` to `.env`
2. Update the `.env` file with your API endpoints and keys:

```
API_BASE_URL=https://your-api-url.com
WHATSAPP_SUPPORT_NUMBER=+1234567890
```

## Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

David Mbah - davidmbah1234@gmail.com



## Acknowledgements

- [Flutter](https://flutter.dev)
- [Dart](https://dart.dev)
- [Font Awesome](https://fontawesome.com)
- [Unsplash](https://unsplash.com) for food images
 
 
