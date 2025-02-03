import 'customer.dart';

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
