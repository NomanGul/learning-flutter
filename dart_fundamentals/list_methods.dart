// 1. Create a new list containing items that have only completed tasks
// 2. Create a list that contains tasks with submission dates between 10 to 20
// 3. Add Completed to each taskName which is marked as "isCompleted":true
// 4. Print all lists with foreach function using anonymous function

import 'dart:convert';

void main() {
  const List<Map<String, dynamic>> data = [
    {
      "taskName": "Do Assignment 5",
      "isCompleted": false,
      "submissionDate": 29,
    },
    {
      "taskName": "Do Assignment 4",
      "isCompleted": true,
      "submissionDate": 26,
    },
    {
      "taskName": "Do Assignment 3",
      "isCompleted": true,
      "submissionDate": 19,
    },
    {
      "taskName": "Do Assignment 2",
      "isCompleted": false,
      "submissionDate": 12,
    },
    {"taskName": "Do Assignment 1", "isCompleted": true, "submissionDate": 5}
  ];

  final completedTasks =
      data.where((task) => task["isCompleted"] == true).toList();

  final tasksBetweenDates = data
      .where((task) =>
          task["submissionDate"] >= 10 && task["submissionDate"] <= 20)
      .toList();

  final formattedTasks = completedTasks
      .map((task) => ({...task, "taskName": task["taskName"] + " - Completed"}))
      .toList();

  [
    ["Completed tasks:", completedTasks],
    ["Tasks between dates:", tasksBetweenDates],
    ["Formatted tasks:", formattedTasks]
  ].forEach((item) {
    print(item[0]);
    printer(item[1]);
  });
}

void printer(Object object) {
  print("=========");
  JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  String prettyprint = encoder.convert(object);
  print(prettyprint);
  print("=========");
}
