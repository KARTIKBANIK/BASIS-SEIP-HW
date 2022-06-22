void main() {
  int number = 99;
  print(
      '----------------------------------------------------\n                Your number is: ${number}\n----------------------------------------------------');

  if (number > 100) {
    print("Your Number Is Invalid Number.");
  }

  if (number < 0) {
    print("Invalid Number.");
  } else if (number >= 80) {
    print('You Got : A+\n CONGRATULATIONS. Best of luck.');
  } else if (number >= 70) {
    print('You Got : A');
  } else if (number >= 60) {
    print('You Got : B');
  } else if (number >= 50) {
    print('You Got : C');
  } else if (number >= 40) {
    print('You Got : D');
  } else {
    print('You Are : F');
  }
}
