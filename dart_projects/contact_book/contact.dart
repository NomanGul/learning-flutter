import 'utils.dart';

class Contact {
  late String name;
  late String phone;
  String email = "";
  late String dob; // dob stands for date of birth

  Contact(name, phone, {email = "", dob = ""}) {
    this.name = name;
    this.phone = phone;

    if (isValidEmail(email)) {
      this.email = email;
    } else if (email.isNotEmpty) {
      printError("Invalid email");
    }

    this.dob = dob;
  }

  @override
  toString() =>
      "Name: $name\nPhone: $phone\nEmail: ${email == '' ? '-' : email}\nDate of Birth: ${dob == '' ? '-' : dob}";

  set newName(String value) {
    if (value.isNotEmpty) {
      this.name = value;
    }
  }

  set newPhone(String value) {
    if (value.isNotEmpty) {
      this.phone = value;
    }
  }

  set newEmail(String value) {
    if (isValidEmail(value)) {
      this.email = value;
    } else if (value.isNotEmpty) {
      printError("Invalid Email");
    }
  }

  set newDOB(String value) {
    if (value.isNotEmpty) {
      this.dob = value;
    }
  }

  update({name = "", phone = "", email = "", dob = ""}) {
    this.newName = name;
    this.newPhone = phone;
    this.newEmail = email;
    this.newDOB = dob;
  }
}

void addContact(List<Contact> contacts) {
  printImportant("➕ Add Contact");
  String name = ask("Name", isRequired: true);
  String phone = ask("Phone", isRequired: true);
  String email = ask("Email", containsThis: EMAIL_REGEX);
  String dob = ask("Date of Birth");
  contacts.add(Contact(name, phone, email: email, dob: dob));
  printSuccess("➕ Added successfully!");
}

void updateContact(List<Contact> contacts) {
  printImportant("♻️ Update Contact");
  String contactIndexString = ask("Index of the contact", isRequired: true);
  int contactIndexInt = int.tryParse(contactIndexString) ?? -1;
  if (contactIndexInt < 0 || contactIndexInt >= contacts.length) {
    printError("Invalid index!");
    return;
  }
  String name = ask("Name");
  String phone = ask("Phone");
  String email = ask("Email", containsThis: EMAIL_REGEX);
  String dob = ask("Date of Birth");
  contacts[contactIndexInt]
      .update(name: name, phone: phone, email: email, dob: dob);
  printSuccess("♻️ Updated successfully!");
}

void listContact(List<Contact> contacts) {
  printImportant("📃 List of Contacts");
  contacts.asMap().forEach((index, contact) {
    print('-------');
    printImportant("${index}.");
    print(contact);
    print('-------');
  });
}

void deleteContact(List<Contact> contacts) {
  printImportant("🗑 Delete Contact");
  String contactIndexString = ask("Index of the contact", isRequired: true);
  int contactIndexInt = int.tryParse(contactIndexString) ?? -1;
  if (contactIndexInt < 0 || contactIndexInt >= contacts.length) {
    printError("Invalid index!");
    return;
  }
  contacts.removeAt(contactIndexInt);
  printSuccess("🗑 Deleted successfully!");
}
