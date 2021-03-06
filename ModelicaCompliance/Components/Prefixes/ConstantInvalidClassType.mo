within ModelicaCompliance.Components.Prefixes;

model ConstantInvalidClassType
  extends Icons.TestCase;

  model M
    Real x = 1.0;
  end M;

  constant M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>constant</pre> is only
        allowed to be applied to type, record and connector components, and not
        e.g. model components.</html>"));
end ConstantInvalidClassType;
