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


void globalFunction(functionArg) {
  print(functionArg);
}

void globalFunctionTest() {
  globalFunction(globalFunction);
  globalFunction(() {});
  globalFunction((num e) {return e; });
  globalFunction(() => 1);
  globalFunction((num e) => e);
}


class AnonymousMembers {
  void mem1(x, y) => x*y;
  mem2(x, y) => x*y;
}


class GetterSetter {
  num a;

  get x => a;
  set x(x) => a = x;
}


class GetterSetterFinal {
  final num a = 10;

  get x => a;
}


int get globalGetter {
  return 5;
}

set globalGetter(x) {
}


callAnonymousFunction() {
  () {return 5;}();
  (() => 2)();
  '''${(() => '${8}')()}''';
}


void nestedFunctions(a) {

  void nestedFunctions2() {
    print(a);
  }

  nestedFunctions2();
}


class Operator {
  num val;

  Operator(this.val);

  operator +(Operator other) {
    return new Operator(this.val + other.val);
  }
}


class AsTestClass {
  foo() => print('AsTestClass');
}

asTesterProducer() {
  return new AsTestClass();
}

asTester() {
  (asTesterProducer() as AsTestClass).foo();
}


void main() {
}
