abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCardPayment extends PaymentMethod {
  String cardNumber;

  CreditCardPayment(this.cardNumber);

  @override
  void pay(double amount) {
    print("Paying \$${amount} using Credit Card: $cardNumber");
  }
}

class CashPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paying \$${amount} in cash.");
  }
}
