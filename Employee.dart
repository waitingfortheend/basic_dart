class Employee {
  // คุณสมบัติ
  late String _name;
  late double _salary;


  Employee( this._name , this._salary) {
    print("constructor");

  }


  // Method , Function
  void development() {
    print("development Employee");
  }

  void showData() {
    print("name = " + _name);
    print("salary = " + _salary.toString());
  }

  //setter
  void setName(String name) {
    this._name = name;
  }
  void setSalary(double salary) {
    this._salary = salary;
  }

  //getter
  String getName() {
    return this._name;
  }

  double getSalary() {
    return this._salary;
  }
}
