import 'dart:io';

void main() {
  print("Enter a year");
  int? year = int.parse(stdin.readLineSync() ?? '');

  if (year == null) {
    print("Invalid input. please enter a valid year.");
    return;
  }
  if (isLeapYear(year)) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}

bool isLeapYear(int year) {
  return (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
}
