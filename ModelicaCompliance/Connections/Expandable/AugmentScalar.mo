within ModelicaCompliance.Connections.Expandable;

model AugmentScalar
  extends Icons.TestCase;

  expandable connector EC
  end EC;

  connector RealOutput = output Real;

  model M
    RealOutput ro = 1.0;
  end M;

  EC ec;
  M m;
equation
  connect(m.ro, ec.ro);

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
        info = "<html>Tests that it's possible to augment an expandable connector
          with a scalar.</html>"));
end AugmentScalar;
