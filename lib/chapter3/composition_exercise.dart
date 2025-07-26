class Person{
  String name;
  int age;
  Person(this.name,this.age);

  void introduce(){
    print("Hi, I'm $name and I'm $age years old.");
  }
}


class Student extends Person{
  List<Role> roles;
  Student(super.name,super.age,this.roles);

  void showRoles(){
    print('$name has the following roles:');
    for(var role in roles){
      print("_${role.name}");
    }
  }

}


enum Role{
  athlete,
  bandMember,
  studentUnionMember,
}

void composition(){
  Student karen = Student('Karen',20,[Role.athlete,Role.bandMember]);
  Student ali = Student('Ali',18,[Role.studentUnionMember,Role.athlete]);
  Student sara = Student('Sara',20,[Role.bandMember,Role.studentUnionMember]);

  karen.introduce();
  karen.showRoles();

  print("");

  ali.introduce();
  ali.showRoles();

  print("");

  sara.introduce();
  sara.introduce();

}