// create Class Car In Dart, we use the factory keyword to identify a default or named constructor. We use the factory keyword to implement constructors that do not produce new instances of an existing class.

//A factory constructor can return a value from a cache or a sub-type instance.
class Car {
    //class properties
    String? name;
    String? color;

    //constructor
    Car({ this.name, this.color});

    // factory constructor that returns a new instance
    factory Car.fromJson(Map json) {
      return Car(name : json['name'], 
      color : json['color']);
    }
}

void main(){
    // create a map
    Map myCar = {'name': 'Mercedes-Benz', 'color': 'blue'};
    // assign to Car instance
    Car car = Car.fromJson(myCar);
    //display result
    print(car.name);
    print(car.color);
}

/* class Square extends Shape {}
 
class Circle extends Shape {}
 
class Shape {
  Shape();
 
  factory Shape.fromTypeName(String typeName) {
    if (typeName == 'square') return Square();
    if (typeName == 'circle') return Circle();
    throw "$typeName shape not recognized.";
  }
}
 
void main() {
  Shape shape = Shape.fromTypeName('square');
  print(shape);
} */

/* Dart also supports factory constructors, which can return subtypes.

Let see this use case of factory with an example. */