import 'dart:io';

// Function to get user input find in stackoverflow
String getInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync() ?? "";
}

// Function to convert input to lowercase
String getLowerInput(String prompt) {
  return toLower(getInput(prompt));
}

// Function to validate phone numbers (Basic example)
bool isValidPhone(String phone) {
  RegExp phoneRegex = RegExp(r'^(\d{3}-\d{3}-\d{4}|\d{10})$');
  return phoneRegex.hasMatch(phone);
}

//to Lower function
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

// Function to validate price input
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
