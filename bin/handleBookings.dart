import 'customer.dart';
import 'utils.dart'; // Import utility functions
import 'menu.dart';

void handleBookings(List<Customer> customers) {
  double totalPrice = 0.0;
  

  while (true) {
    Customer customer = menu();// menu : get input from user
    customers.add(customer);
    totalPrice += customer.tripPrice; // Add trip price to total

    String another = getLowerInput("\nDo you want to add another customer? (y/n): ");
    if (another[0] != "y") break; // Exit loop if user says have not say yeeeeeeee
  }

  displayBookings(customers, totalPrice);
}

void displayBookings(List<Customer> customers, double totalPrice) {
  int customerNumber = 0;
  print("\n📌 All Bookings:");
  for (var customer in customers) {
    customer.displayInfo();
    print("----------------------------------");
  }
  print("Total Bookings: $customerNumber");
  print("\n💰 Total Price of All Bookings: \$$totalPrice");
}
