class Customer {
  String destination;
  String phone;
  String contactName;
  double tripPrice;

  Customer(this.destination, this.phone, this.contactName, this.tripPrice);

  void bookTrip() {
    print("Booking trip for $contactName to $destination.");
  }

  void getTransportation() {
    print("Arranging transportation to the airport for $contactName.");
  }

  void displayInfo() {
    print("\nBooking Summary:");
    print("The transportation to Airport have been booked for $contactName.");
    print("Destination: $destination");
    print("Phone: $phone");
    print("Contact Name: $contactName");
    print("Trip Price: \$$tripPrice");
  }
}
