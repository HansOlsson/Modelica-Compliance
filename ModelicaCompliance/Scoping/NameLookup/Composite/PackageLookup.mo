within ModelicaCompliance.Scoping.NameLookup.Composite;

model PackageLookup
  extends Icons.TestCase;

  class A
    Integer x = 17;
  end A;

  class B
    A a;
  end B;

  class C
    B b;
  end C;

  C c;
  Integer y = c.b.a.x;

equation
  assert(y == 17, "y was not set correctly!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that composite names where each identifier is a
      component can be looked up if the types of the components satisfy the
      requirements for a package.</html>"));
end PackageLookup;
