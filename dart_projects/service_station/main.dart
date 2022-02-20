/*
Assignment 7 | Service Station

Create a class named as Vehicle and add a method in it doService which should
contain a print statement like:

print("Vehicle is servicing...");

Create classes named as Car, Bus, Truck, Bike and extend all of them with
Vehicle class. Override doService method in each of them and change the print
statements as:

print("Car is servicing...");
print("Bus is servicing..."); etc etc

Now create a simple function just after main function serviceCenter() which
should accept an argument of type Vehicle and call the doService function inside
it which is from Service class.

So your final code will look like this:

Car c = Car();
Bus b = Bus();
Truck t = Truck(); ... etc etc

and call the serviceCenter function as:

serviceCenter(c);
serviceCenter(b);
serviceCenter(t);

the output will be like this:
Car is servicing...
Bus is servicing...
Truck is servicing...

#assignment #inheritance #polymorphism
*/

class Vehicle {
  doService() {
    print("Vehicle is servicing...");
  }
}

class Car extends Vehicle {
  @override
  doService() {
    print("Car is servicing...");
  }
}

class Bus extends Vehicle {
  @override
  doService() {
    print("Bus is servicing...");
  }
}

class Truck extends Vehicle {
  @override
  doService() {
    print("Truck is servicing...");
  }
}

class Bike extends Vehicle {
  @override
  doService() {
    print("Bike is servicing...");
  }
}

void main() {
  Car carObject = Car();
  Bus busObject = Bus();
  Truck truckObject = Truck();
  Bike bikeObject = Bike();

  serviceCenter(carObject);
  serviceCenter(busObject);
  serviceCenter(truckObject);
  serviceCenter(bikeObject);
}

void serviceCenter(Vehicle gari) {
  gari.doService();
}
