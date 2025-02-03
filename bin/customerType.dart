
import 'dart:io';
import 'utils.dart'; // Import utility functions
import 'customer.dart'; 

Customer customerType(String choice, String destination, String phone, String contactName, double tripPrice) {
  Customer customer;

  switch (choice) {
    case "1":
      String insuranceNumber = validateInsuranceNumber("Enter Insurance Number (P12345),('P' or 'p' followed by 5 digits): ");
      String workPlace = getLowerInput("Enter your workPlace: ");
      customer = Individual(destination, phone, contactName, tripPrice, insuranceNumber, workPlace);
      (customer as Individual).notifyWorkplace();
      break;

    case "2":
      String insuranceCompany = getLowerInput("Enter Insurance Company Name: ");
      String remainingFamilyMember = getLowerInput("Enter Family Member Remaining in Canada: ");
      customer = Family(destination, phone, contactName, tripPrice, insuranceCompany, remainingFamilyMember);
      (customer as Family).notifyFamilyMember();
      break;

    case "3":
      String organizingHardware = getLowerInput("Enter Organizing Hardware (e.g., whistles, flags): ");
      String acceptingCompany = getLowerInput("Enter Destination Company Name: ");
      customer = Group(destination, phone, contactName, tripPrice, organizingHardware, acceptingCompany);
      (customer as Group).notifyDestinationCompany();
      break;

    default:
      print("Invalid choice. Please restart the program.");
      exit(1);
  }

  customer.bookTrip();
  customer.getTransportation();
  customer.displayInfo();

  return customer;
}