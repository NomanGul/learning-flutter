/*
Assignment 6

Create a contact book.

When we run the code, it should contain a main menu like this
======== Main Menu ========
Enter 1 to add Contact
Enter 2 to Update Contact
Enter 3 to List All Contacts
Enter 4 to Delete a contact
Please enter your choice:

2. Option 1 Add contact must ask for name,phone,email & Date Of Birth. Email & Date Of Birth will be optional.

3. Option 2 will take index of the contact and ask you for all the information again to update it. If you leave any option empty, it should not be updated and left as it was.

4. Option 3 List will show all contacts with their data Like below
Name: Ishaq
Phone: 12345
Email: hello@world.com
Date Of Birth : 2-5-1995

5. Option 4 will take index of contact and remove it from list

6. Any other key should exit the program

NOTE : Email must contain @ & Program should run infinitely unless we want to exit or stop it

A single contact should be a class & List of contacts should contain its type
like
List<Contact> contacts = [];
*/

import "dart:io";
import 'contact.dart';
import 'utils.dart';

void main() {
  List<Contact> contacts = [];

  // loading these into contact list for quick testing purposes
  contacts.add(Contact("Nomi", "03430203020"));
  contacts.add(Contact("Tomi", "03210323232", email: "abc@xyz.com"));
  contacts.add(Contact("Zumi", "923492303232",
      email: "noreply@why.com", dob: "2-5-1995"));
  //

  while (true) {
    printImportant("======== Contact Book ========");
    print("Enter 1 to Add Contact");
    print("Enter 2 to Update Contact");
    print("Enter 3 to List All Contacts");
    print("Enter 4 to Delete a contact");
    printImportant("Please enter your choice:");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case "1":
        addContact(contacts);
        break;
      case "2":
        updateContact(contacts);
        break;
      case "3":
        listContact(contacts);
        break;
      case "4":
        deleteContact(contacts);
        break;
      default:
        exit(0);
    }
  }
}
