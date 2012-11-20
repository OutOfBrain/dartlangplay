class ConstructorInitializationDefault {
  num a, b, c;

  // b gets the value null, a and c get initialized directly
  ConstructorInitializationDefault(this.a, b, this.c);
}


class ConstructoreInitializationOverwrite {
  num a, b, c;

  ConstructoreInitializationOverwrite(this.a, this.b, c) {
    // a gets overwritten with whatever was passed to b as a param. c stays null
    this.a = this.b;
  }
}


class NamedConstructor {
  num a, b;

  NamedConstructor(this.a, this.b); // normal direct init constructor

  NamedConstructor.namedOne(); // constructor with no params and no initialization; a, b null

  NamedConstructor.namedTwo(a, this.b) {
    this.a = 2*a;
  }
}

class FactoryConstructors {
  factory FactoryConstructors() {
    // be carefull not to create infinite recursion:
    // return new FactoryConstructors();
    return getNew(); // can create from static method
  }

  // can also use other constructor, internal constructor
  FactoryConstructors._internal();

  static getNew() {
    return new FactoryConstructors._internal();
  }
}


void main() {
}
