import 'employee.dart';

void main(List<String> args) {
  var myId = new Employee.id("FR2507");
  var myName = new Employee.name("Fatih");
  var myDepartment = new Employee.department("IT Departement");

  print(myId.id);
  print(myName.name);
  print(myDepartment.departement);
}
