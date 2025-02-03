import '../classes/customer.dart';
import '../utils.dart'; // Import utility functions
import 'menu.dart';

void handleBookings(List<Customer> customers) {
  double totalPrice = 0.0;

  while (true) {
    Customer customer = menu(); // menu : get input from user
    customers.add(customer);
    totalPrice += customer.tripPrice;

    String another =
        getLowerInput("\nDo you want to add another customer? (y/n): ");
    if (another[0] != "y")
      break; // Exit loop if first letter is not "y" cuz user can enter yes , yeah, yeees etc
  }

  displayBookings(customers, totalPrice); 
}

void displayBookings(List<Customer> customers, double totalPrice) {
  int customerNumber = 0;

  print("\n📌 All Bookings:");
  for (var customer in customers) {
    print("\n👤Customer: ${++customerNumber}:");
    customer.displayInfo();
    print("----------------------------------");
  }
  print("Total Bookings: ${customerNumber}");
  print("\n💰 Total Price of All Bookings: \$${roundPrice(totalPrice)}");
}
