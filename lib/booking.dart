import 'guest.dart';
import 'room.dart';

class Booking {
  Guest guest;
  Room room;
  int nights;

  Booking({required this.guest, required this.room, required this.nights});

  double get totalPrice => room.priceNight * nights;

  void printDetails() {
    print("\n Booking Summary:");
    guest.displayInfo();
    room.displayRoomDetails();
    print("Nights: $nights");
    print("Total Price: \$${totalPrice}");
  }
}
