import 'dart:io';

void main() {
  print("Control Flow Assignment");
  print("Choose a number to run a specific program:");
  print("1. Voting Eligibility");
  print("2. Even Numbers (1 to 20)");
  print("3. Password Verification");
  print("4. Grade Classification");
  print("5. Day of the Week");
  print("6. Login and Access Control System");
  stdout.write("Enter your choice (1-6): ");
  int choice = int.parse(stdin.readLineSync()!);

  print("\n-----------------------------\n");

  switch (choice) {
    case 1:
      votingEligibility();
      break;
    case 2:
      evenNumbers();
      break;
    case 3:
      passwordVerification();
      break;
    case 4:
      gradeClassification();
      break;
    case 5:
      dayOfWeek();
      break;
    case 6:
      loginAccessControl();
      break;
    default:
      print("Invalid choice. Please run the program again.");
  }
}

// Question 1: IF Statement – Voting Eligibility
void votingEligibility() {
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote yet.");
  }
}

// Question 2: FOR Loop – Even Numbers
void evenNumbers() {
  print("Even numbers from 1 to 20:");
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// Question 3: WHILE Loop – Password Verification
void passwordVerification() {
  String password = "";
  while (password != "admin123") {
    stdout.write("Enter password: ");
    password = stdin.readLineSync()!;
  }
  print("Access granted.");
}

// Question 4: IF-ELIF-ELSE – Grade Classification
void gradeClassification() {
  stdout.write("Enter your exam score (0–100): ");
  int score = int.parse(stdin.readLineSync()!);
  if (score >= 90) {
    print("Excellent! You got an A.");
  } else if (score >= 80) {
    print("Very Good! You got a B.");
  } else if (score >= 70) {
    print("Good! You got a C.");
  } else {
    print("You need improvement. You got a D.");
  }
}

// Question 5: SWITCH-CASE – Day of the Week
void dayOfWeek() {
  stdout.write("Enter a number from 1 to 7: ");
  int day = int.parse(stdin.readLineSync()!);
  switch (day) {
    case 1:
      print("Sunday");
      break;
    case 2:
      print("Monday");
      break;
    case 3:
      print("Tuesday");
      break;
    case 4:
      print("Wednesday");
      break;
    case 5:
      print("Thursday");
      break;
    case 6:
      print("Friday");
      break;
    case 7:
      print("Saturday");
      break;
    default:
      print("Invalid input.");
  }
}

// Question 6: Advanced IF-ELSE – Login and Access Control System
void loginAccessControl() {
  stdout.write("Enter username: ");
  String username = stdin.readLineSync()!;

  stdout.write("Enter password: ");
  String password = stdin.readLineSync()!;

  stdout.write("Enter role (admin/user): ");
  String role = stdin.readLineSync()!;

  if (username == "manager") {
    if (password == "admin@123") {
      if (role == "admin") {
        print("Welcome Admin Manager! Full access granted.");
      } else {
        print("Access denied: Admin role required.");
      }
    } else {
      print("Incorrect password. Try again.");
    }
  } else if (username == "guest") {
    if (password == "user@123" && role == "user") {
      print("Welcome Guest! Limited access granted.");
    } else {
      print("Incorrect password. Try again.");
    }
  } else {
    print("Unknown user.");
  }
}
