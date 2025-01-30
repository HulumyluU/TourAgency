import 'customer.dart'; // Import customer classes
import 'handleBookings.dart'; // Import handleBookings function

void main() {
  print("Wsp, welcome to our agency! We need some info to book your trip.");

  List<Customer> customers = []; // Store multiple customers
  handleBookings(customers); // Call the extracted method
}



