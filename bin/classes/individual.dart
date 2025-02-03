import 'customer.dart';

class Individual extends Customer {
  String insuranceNumber;
  String workPlace;

  Individual(String destination, String phone, String contactName,
      double tripPrice, this.insuranceNumber, this.workPlace)
      : super(destination, phone, contactName,
            tripPrice); // Calls the Customer constructor to initialize common properties

  void notifyWorkplace() {
    print("-----------------------------");
    print("$contactName's workplace: ${workPlace} has been notified.");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Travel Insurance: $insuranceNumber");
    print("Workplace: $workPlace");
  }
}

