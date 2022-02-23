import 'Employee.dart';

class Manager extends Employee {
  String work;

  Manager(String name, double salary, this.work) : super(name, salary);

  void ShowData() {
    print("manager = " + super.getName());
    print("manager salary = " + super.getSalary().toString());
  }
}
