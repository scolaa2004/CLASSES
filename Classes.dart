// Abstraction: Abstract class with abstract methods
abstract class Animal {
  // Abstract method: must be implemented by subclasses
  void speak();

  // Concrete method: can be inherited as is
  void eat() {
    print("This animal is eating.");
  }
}

// Encapsulation: Class with private variables and controlled access methods
class Person {
  // Private variables (underscore denotes private in Dart)
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Public getter and setter methods to access private variables
  String get name => _name;
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print("Name cannot be empty.");
    }
  }

  int get age => _age;
  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print("Age must be positive.");
    }
  }

  void display() {
    print("Name: $_name, Age: $_age");
  }
}

// Inheritance: Dog class inherits from Animal
class Dog extends Animal {
  @override
  void speak() {
    print("The dog barks.");
  }

  @override
  void eat() {
    print("The dog eats kibble.");
  }
}

// Inheritance: Cat class inherits from Animal
class Cat extends Animal {
  @override
  void speak() {
    print("The cat meows.");
  }

  @override
  void eat() {
    print("The cat eats fish.");
  }
}

void main() {
  // Encapsulation: Creating an object of the Person class
  Person person = Person("John", 30);
  person.display();
  person.name = "Jane"; // Using setter to change name
  person.age = 25;      // Using setter to change age
  person.display();

  // Inheritance and Polymorphism: Creating objects of Dog and Cat
  Animal dog = Dog();
  Animal cat = Cat();

  dog.speak();  // Outputs: The dog barks.
  cat.speak();  // Outputs: The cat meows.

  dog.eat();  // Outputs: The dog eats kibble.
  cat.eat();  // Outputs: The cat eats fish.
}
