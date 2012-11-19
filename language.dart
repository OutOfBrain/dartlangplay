/**
 * constructor initialization
 */
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
}

void main() {

}
