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
    print("Destination: $destination");
    print("Phone: $phone");
    print("Contact Name: $contactName");
    print("Trip Price: \$$tripPrice");
  }
}

class Individual extends Customer {
  String insuranceNumber;

  Individual(
      String destination, String phone, String contactName, double tripPrice, this.insuranceNumber)
      : super(destination, phone, contactName, tripPrice);// Calls the Customer constructor to initialize common properties

  void notifyWorkplace() {
    print("-----------------------------");
    print("$contactName's workplace has been notified.");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Travel Insurance: $insuranceNumber");
  }
}

class Family extends Customer {
  String insuranceCompany;
  String remainingFamilyMember;

  Family(String destination, String phone, String contactName, double tripPrice,
      this.insuranceCompany, this.remainingFamilyMember)
      : super(destination, phone, contactName, tripPrice);

  void notifyFamilyMember() {
    print("-----------------------------");
    print("Notifying $remainingFamilyMember, who is staying in Canada.");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Family Health Insurance: $insuranceCompany");
    print("Remaining Family Member in Canada: $remainingFamilyMember");
  }
}

class Group extends Customer {
  String organizingHardware;
  String acceptingCompany;

  Group(String destination, String phone, String contactName, double tripPrice,
      this.organizingHardware, this.acceptingCompany)
      : super(destination, phone, contactName, tripPrice);

  void notifyDestinationCompany() {
    print("-----------------------------");
    print("Notifying $acceptingCompany that the group is arriving.");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Organizing Hardware: $organizingHardware");
    print("Destination Company: $acceptingCompany");
  }
}
