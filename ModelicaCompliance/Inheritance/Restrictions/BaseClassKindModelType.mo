within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindModelType
  extends Icons.TestCase;

  type Base = Real;

  model Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization model is not allowed to derive from type.</html>"));
end BaseClassKindModelType;
