import 'classes/customer.dart'; // Import customer classes
import 'components/handleBookings.dart'; // Import handleBookings function

void main() {
  print("______________________________________________________\n");
  print("✨ Welcome to our Travel Booking Agency! ✨");
  print("We’re here to make your journey smooth and hassle-free.");
  print("Let's gather some details to book your perfect trip!\n");

  List<Customer> customers = [];
  handleBookings(customers);

  print("\n🌟 Thank you for choosing our services! 🌟");
}



