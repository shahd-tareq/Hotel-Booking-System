import 'dart:io';
import 'guest.dart';
import 'room.dart';
import 'hotel.dart';
import 'booking.dart';
import 'payment.dart';

void main() {
  print("Welcome to 5 Star Hotel \n");

  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your email: ");
  String email = stdin.readLineSync()!;
  stdout.write("Enter your number: ");
  String phone = stdin.readLineSync()!;

  Guest guest = Guest(name: name, email: email, Number: phone);

  Hotel hotel = Hotel("5 Star Hotel");
  hotel.addRoom(SingleRoom(roomNumber: 309));
  hotel.addRoom(DoubleRoom(roomNumber: 608));
  hotel.addRoom(SuiteRoom(roomNumber: 123));

  hotel.showAvailableRooms();

  stdout.write("\nEnter room number to book: ");
  int chosenRoom = int.parse(stdin.readLineSync()!);
  Room? room = hotel.getRoomByNumber(chosenRoom);

  if (room == null) {
    print("Room not found");
    return;
  }

  stdout.write("How many nights will you stay? ");
  int nights = int.parse(stdin.readLineSync()!);

  Booking booking = Booking(guest: guest, room: room, nights: nights);
  booking.printDetails();

  stdout.write("\nChoose Payment Method (1: Card, 2: Cash): ");
  int choice = int.parse(stdin.readLineSync()!);

  PaymentMethod payment;
  if (choice == 1) {
    stdout.write("Enter card number: ");
    String cardNumber = stdin.readLineSync()!;
    payment = CreditCardPayment(cardNumber);
  } else {
    payment = CashPayment();
  }

  payment.pay(booking.totalPrice);

  print("\n Booking Completed Successfully. Have a nice stay.");
}
