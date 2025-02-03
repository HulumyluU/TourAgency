import 'dart:io';

// Function to get user input find in stackoverflow
String getInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync() ?? "";
}

String getLowerInput(String prompt) {
  return toLower(getInput(prompt));
}

String toLower(String input) {
  String result = '';
  for (int i = 0; i < input.length; i++) {
    int charCode = input.codeUnitAt(i);

    // Check if the character is uppercase (A-Z)
    if (charCode >= 65 && charCode <= 90) {
      // Convert to lowercase by adjusting the ASCII value
      charCode += 32;
      //explocation why i am adding 32 and not 26(26 letters in alphabet):
      //Uppercase letters ('A' to 'Z') have ASCII values from 65 to 90.
      //Lowercase letters ('a' to 'z') have ASCII values from 97 to 122.
      //have no idea what and why are those 7 characters between 90 and 97
    }

    // modified character
    result += String.fromCharCode(charCode);
  }
  return result;
}

String getValidPhone(String prompt) {
  while (true) {
    String phone = getInput(prompt);

    if (isValidPhone(phone)) {
      // If input is in "1231231212" format, convert it to "123-123-1212"
      if (phone.length == 10) {
        phone =
            '${phone.substring(0, 3)}-${phone.substring(3, 6)}-${phone.substring(6)}';
      }
      return phone;
    } else {
      print(
          "Invalid phone format! Please enter in 123-456-7890 or 1231231212 format.");
    }
  }
}

bool isValidPhone(String phone) {
  RegExp phoneRegex = RegExp(r'^(\d{3}-\d{3}-\d{4}|\d{10})$');
  return phoneRegex.hasMatch(phone);
}

double getValidPrice(String prompt) {
  while (true) {
    String input = getInput(prompt);
    try {
      return double.parse(input);
    } catch (e) {
      print("Invalid price. Please enter a valid number.");
    }
  }
}

String validateInsuranceNumber(String prompt) {
  RegExp regex =
      RegExp(r'^[Pp]\d{5}$'); // Pattern: 'P' or 'p' followed by 5 digits
  String input;

  do {
    input = getLowerInput(prompt);
    if (!regex.hasMatch(input)) {
      print("Invalid format! Please enter in the format P12345.");
    }
  } while (!regex.hasMatch(input));

  return input;
}

// Function to validate that the user input is one of "1", "2", or "3"
String validateChoice(String prompt) {
  while (true) {
    // Use getLowerInput to get the user's input in lowercase (if needed)
    String input = getLowerInput(prompt);

    // Check if the input is one of the valid choices
    if (input == "1" || input == "2" || input == "3") {
      return input;
    }

    // If input is not valid, print an error message and loop again.
    print("Invalid choice! Please enter 1, 2, or 3.");
  }
}

int roundPrice(double price) {
  int intPrice = price.toInt();
  return intPrice;
}
