
void main() { 
  
  String fName = "Alex";
  String lName = "Dcosta";
  String company = "SoftVerse IT LTD.";
  int age = 26;
  double salary = 5000.2365478;

  print("Hi, \n I'm ${fName} ${lName} \n I'm $age years old. \n Currently I Work in ${company} \n My salary is ${salary.toStringAsFixed(3)}");
   
  int num1 = 10;
  double num2 = 2.65478;
  
  double result = 0;
  
   result = num1+num2; 
   print("Add: ${result.toStringAsFixed(2)}"); 
  
   result = num1-num2; 
   print("Sub: ${result.toStringAsFixed(2)}");
  
   result = num1*num2; 
   print("Mul: ${result.toStringAsFixed(2)}");
  
   result = num1/num2; 
   print("Div: ${result.toStringAsFixed(2)}");
  
   result = num1%num2; 
   print("Reminder: ${result.toStringAsFixed(2)}");
  
  
}