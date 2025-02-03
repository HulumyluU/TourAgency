import 'customer.dart';

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