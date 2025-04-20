abstract class Room {
  int roomNumber;
  double priceNight;

  Room({required this.roomNumber, required this.priceNight});

  void displayRoomDetails();
}

class SingleRoom extends Room {
  SingleRoom({required int roomNumber})
    : super(roomNumber: roomNumber, priceNight: 500);

  @override
  void displayRoomDetails() {
    print("Single Room:Room ($roomNumber) | \$${priceNight}>night");
  }
}

class DoubleRoom extends Room {
  DoubleRoom({required int roomNumber})
    : super(roomNumber: roomNumber, priceNight: 900);

  @override
  void displayRoomDetails() {
    print("Double Room:Room ($roomNumber) | \$${priceNight}>night");
  }
}

class SuiteRoom extends Room {
  SuiteRoom({required int roomNumber})
    : super(roomNumber: roomNumber, priceNight: 1200);

  @override
  void displayRoomDetails() {
    print("Suite Room :Room ($roomNumber )| \$${priceNight}>night");
  }
}
