# 📱 M-Pesa Clone - Flutter & Firebase

A simple M-Pesa clone built with **Flutter** and **Firebase**, demonstrating user authentication, transaction history, and real-time data updates. 

## 🚀 Features
✅ **Firebase Authentication** – Secure login and user management  
✅ **User Details** – Retrieve and display **name, balance, transaction history**  
✅ **Send & Receive Money** – Simulate transactions within the app  
✅ **Transaction History** – Users can track past transactions  
✅ **Real-Time Data** – Firebase Firestore updates balances instantly  

## 🛠️ Tech Stack
- **Flutter** (Dart) – Frontend UI  
- **Firebase Authentication** – User login/signup  
- **Firebase Firestore** – Database for user details and transactions  
- **Provider / riverpod** – For managing app state efficiently  

## 🏗️ Object-Oriented Design (Inheritance in Flutter)
This project demonstrates **inheritance** by structuring classes efficiently:

```dart
// Base class for users
class User {
  String name;
  double balance;

  User(this.name, this.balance);

  void displayUserInfo() {
    print("User: \$name, Balance: \$balance");
  }
}

// Derived class for customers with additional features
class Customer extends User {
  List<String> transactionHistory = [];

  Customer(String name, double balance) : super(name, balance);

  void addTransaction(String transaction) {
    transactionHistory.add(transaction);
  }
}
```

**Why use inheritance?**  
- **Reusability**: The `User` class provides basic attributes, and `Customer` extends it to add transaction-specific functionality.  
- **Clean Code**: Keeps the logic organized and avoids redundancy.  



## 📥 Download & Installation  
To run this project locally:  
1. Clone the repository:  
   ```sh
   git clone https://github.com/yourusername/mpesa-clone.git
   cd mpesa-clone
   ```
2. Install dependencies:  
   ```sh
   flutter pub get
   ```
3. Run the app:  
   ```sh
   flutter run
   ```

## 🔗 Download APK  
📥 https://drive.google.com/file/d/1ouFVOsneHhpimU9aQswk3ZoVydy3f_QD/view?usp=drive_link 

## 🤝 Contributing  
Feel free to fork this repo, open issues, or submit pull requests!  

## 📬 Contact  
For questions, reach out via:  
📧 **paramwas@gmail.com**  
