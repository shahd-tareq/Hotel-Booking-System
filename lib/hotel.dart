import 'room.dart';

class Hotel {
  String hotelName;
  List<Room> availableRooms = [];

  Hotel(this.hotelName);

  void addRoom(Room room) {
    availableRooms.add(room);
    print("Room #${room.roomNumber} added to hotel.");
  }

  void showAvailableRooms() {
    print("Available Rooms in $hotelName:");
    for (var room in availableRooms) {
      room.displayRoomDetails();
    }
  }

  Room? getRoomByNumber(int number) {
    for (var room in availableRooms) {
      if (room.roomNumber == number) return room;
    }
    return null;
  }
}
