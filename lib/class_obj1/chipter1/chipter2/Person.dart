class Person{
  String name;
  int age;

  String _birthday;

  bool get isAdult => age > 18;

  void run(){
    print("Person runn...");
  }

  @override
  String toString() {
    return "Person name is $name,age is $age";
  }
}