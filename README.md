# 🏨 Hotel Booking System (Dart, OOP-Based)

## 📌 Project Overview
This is a simple **Hotel Booking System** built using the Dart programming language, applying the principles of **Object-Oriented Programming (OOP)**.  
The system simulates basic hotel operations such as adding rooms, making a booking, and selecting a payment method.

## 🧱 Key Concepts Covered

- Classes & Objects
- Abstraction
- Encapsulation
- Inheritance
- Polymorphism

## 📦 Main Components

| File           | Description                                                                 |
|----------------|-----------------------------------------------------------------------------|
| `user.dart`    | Contains the `User` class that holds basic user information                |
| `room.dart`    | Defines the abstract `Room` class and its subclasses: `SingleRoom`, `DoubleRoom`, `SuiteRoom` |
| `hotel.dart`   | Defines the `Hotel` class which manages rooms                               |
| `booking.dart` | Defines the `Booking` class which connects a user to a room                 |
| `payment.dart` | Contains an abstract `PaymentMethod` class and its implementations: `CreditCardPayment`, `CashPayment` |
| `main.dart`    | Handles user input and simulates the booking process                        |

## 🔄 How It Works

1. The user is asked to enter their personal information.
2. A list of available rooms in the hotel is displayed.
3. The user selects a room and number of nights.
4. A booking is created and shown to the user.
5. The user chooses a payment method: either **Credit Card** or **Cash**.
6. Payment is processed and a confirmation is shown.

## 🧪 Example Classes

```dart
class User {
  String name;
  String email;
  String phoneNumber;

  User({required this.name, required this.email, required this.phoneNumber});
}
```

```dart
abstract class Room {
  int roomNumber;
  double pricePerNight;

  Room({required this.roomNumber, required this.pricePerNight});
}
```

## ✅ Technologies Used
- Dart (OOP structure)
- Run via CLI (Command-Line Interface)

## 🔧 How to Run

Make sure Dart is installed. Then run:

```bash
dart main.dart
```
