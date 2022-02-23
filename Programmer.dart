import 'Employee.dart';

class Programmer extends Employee {
  String coding;

  Programmer(String name, double salary, this.coding) : super(name, salary);

  String getSkill() {
    return coding;
  }

  void development() {
    super.development();
  }

  void ShowData() {
    print("manager = " + super.getName());
    print("manager salary = " + super.getSalary().toString());
  }
}
