import 'Employee.dart';
import 'Manager.dart';
import 'Programmer.dart';

void main() {
  // Static type
  num age = 20;
  double pi = 3.14;
  String name = "Test String";
  bool isCheck = true;

  print("Int =>" + age.toString());
  print("Pi => ${pi}");
  print("String => $name");
  print("Bool => ${isCheck}");

// dynamic type
  var number = 14;
  dynamic test = "qwe";
  test = 15;

  print("Var => ${number}");
  print("Dynamic => ${test}");

  // Constant & final
  const int number1 = 100;
  int _plus = 100;
  final $number2 = 3.14 + _plus;
  print("Const => ${number1}");
  print("Final => ${$number2}");

// operator
  var x = 100, y = 50;
  int z = x ~/ y;
  print("Z => ${z}");

  print(x == y);
  print(x != y);
  print("Prefix x=> ${x++}");
  print("Postfix y => ${++y}");

//Compound Assignment
  print("+= > ${x += y}");
  print("-= > ${x -= y}");
  print("*= > ${x *= x}");
  print("/= > ${x ~/= y}");
  print("%= > ${x %= y}");

// if else
  if (x % 2 == 0) {
    print("even");
  } else {
    print("odd");
  }

  print(x > y ? "more" : "less");

// Loop
  int count = 1;
  while (count <= 3) {
    print("while $count");
    count++;
  }

  for (var i = 1; i <= 4; i++) {
    if (i == 3) continue;

    print("for $i");
  }

  var countdo = 1;

  do {
    print("do $countdo");
    countdo++;

    if (countdo == 2) break;
  } while (countdo <= 3);

  show("show text fn void");

  print(getCity());

  show1("msg arrow fn");

  showData("testname");

  showData2(name: "name",city: "city",age: "age");

  // First-Class Function
  var myAge = getAge;
  print(myAge());

  // List Properties & Function
  List color =["red","green","blue"];
  color.add(152);
  print(color.length);
  print(color[0]);
  print(color[color.length-1]);
  
  // loop
  for(int i = 0;i<color.length;i++) {
    print(color[i]);
  }

  //foreach
  for (var element in color) {
    print(element);
  }

  // list Function
   color.add("red");
   var newcolor = ["black","white"];
   color.addAll(newcolor);
   print(color);

   color.insert(1, "insert ");
   print(color);
   color.insertAll(1, ["insert ","insert2"]);
   print(color);

   color.remove("red");
   print(color);

   color.removeRange(0,3);
   print(color);

  color.removeAt(2);
   print(color);

  color.removeWhere((element) => element=="red");
   print(color);

  // Map
  // Map <key,value> , Map<dynamic,dynamic>
  Map<String,String> colors =  {"Red":"แดง"};
  Map<String,int> money =  {"balance":5000};
  Map<String,String> word =  {"th":"ไทย"};
  Map<int,String> code =  {404:"Not Found",200:"Ok"};

  print(colors["Red"]);
  print(money["balance"]);
  print(word["th"]);
  print(code[404]);

  colors["Green"] = "เขียว";
  print(colors["Green"]);
  colors.remove("Red");
  print(colors);

// List TO MAP
  List<String> username = ["user1","user2","user3"];
  Map<int,String> data = username.asMap();
  print(data);

  List<int> number2 = [100,200,300];
  Map<int,int> data2 = number2.asMap();
  print(data2);

// MAP TO LIST
Map<String,String> color3 = {"Red":"แดง","Yellow":"เหลือง"};
print(color3);
print(color3.keys);
print(color3.values);

List<String> en = color3.keys.toList();
print(en);

List<String> th = color3.values.toList();
print(th);


// Class 

Employee emp1 = Employee("thisname",15000);
Employee emp2 = Employee("user2",20000);

Manager manager = Manager("manager", 18000,"manager");
Programmer programmer = Programmer("programer", 30000, "css");

emp1.showData();
emp2.showData();
manager.showData();
programmer.showData();
print(programmer.getSkill());
programmer.development();

}

getAge()=>20;

// function
void show(String msg) {
  print(msg);
}

String getCity() {
  return "CNX";
}

void show1(String msg) => print(msg);

void showData(String name, [int age = 0]) {
  print("name => $name age => $age");
}

void showData2({String? name,String? city,String? age}) {
  print("name => $name city => $city age => $age");
}