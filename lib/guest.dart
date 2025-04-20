class Guest {
  String name;
  String email;
  String Number;

  Guest({required this.name, required this.email, required this.Number});

  void displayInfo() {
    print("Guest Info:");
    print("Name: $name");
    print("Email: $email");
    print("Phone: $Number");
  }
}
