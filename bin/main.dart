import 'customer.dart'; // Import customer classes
import 'handleBookings.dart'; // Import handleBookings function

void main() {
  print("✨ Welcome to our Travel Booking Agency! ✨");
  print("We’re here to make your journey smooth and hassle-free.");
  print("Let's gather some details to book your perfect trip!\n");

  List<Customer> customers = [];
  handleBookings(customers); 
}



