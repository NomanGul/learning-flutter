import "dart:io";

String ask(field, {isRequired = false, containsThis = ""}) {
  var value = "";
  do {
    print(
        "Please enter \x1B[33m$field${isRequired ? '' : '(Optional)'}:\x1B[0m");
    value = stdin.readLineSync()!;
    if (isRequired && value.isEmpty) {
      printError("$field is required!");
    } else if (value.isNotEmpty && !value.contains(containsThis)) {
      printError("Invalid $field value");
    }
  } while ((isRequired && value.isEmpty) ||
      (value.isNotEmpty && !value.contains(containsThis)));
  return value;
}

final RegExp EMAIL_REGEX = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

bool isValidEmail(String email) {
  return EMAIL_REGEX.hasMatch(email);
}

printImportant(String message) {
  print("\x1B[33m$message\x1B[0m");
}

printSuccess(String message) {
  print("\x1B[32m$message\x1B[0m");
}

printError(String message) {
  print("\x1B[31m$message\x1B[0m");
}
