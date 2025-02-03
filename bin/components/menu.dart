import '../classes/customer.dart';
import '../utils.dart'; // file for my own "in-build functions"
import 'customerType.dart'; 

Customer menu() {

  print("\nChoose customer type:");
  print("1. Individual");
  print("2. Family");
  print("3. Group");
  print("For exist press any other key");
  print("----------------------------------");

  String choice = validateChoice("Enter your choice (1/2/3): ");
  String destination = getLowerInput("Enter Destination: ");
  String phone = getValidPhone("Enter Contact Phone (123-456-7890): ");
  String contactName = getLowerInput("Enter Contact Name: ");
  double tripPrice = getValidPrice("Enter Trip Price: ");

  Customer customer = customerType(choice, destination, phone, contactName, tripPrice);
  return customer; // Return the created customer

}

