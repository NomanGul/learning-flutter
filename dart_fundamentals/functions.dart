import "dart:io";

void main() {
  // checkFavourite(["biryani", "karahi", "kabab"], "biryani");
  checkFavourite(["biryani", "karahi", "kabab"]);
}

void checkFavourite(List<String> allItems) {
  print("Please enter your favourite:");
  String favourite = stdin.readLineSync()!;
  for (String item in allItems) {
    if (item == favourite) {
      print("$favourite found in list");
      return;
    }
  }
  print("$favourite not found in list");
  return;
}


// checkFavourite(List<String> allItems, String favourite) {
//   for (String item in allItems) {
//     if (item == favourite) {
//       print("$favourite found in list");
//       return;
//     }
//   }
//   print("$favourite not found in list");
// }
