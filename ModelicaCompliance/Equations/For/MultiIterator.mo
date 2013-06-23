within ModelicaCompliance.Equations.For;

model MultiIterator
  extends Icons.TestCase;

  Real x[3, 2];
equation
  for i in 1:3, j in 1:2 loop
    x[i, j] = i * j;
  end for;

  assert(Util.compareReal(x[1, 1], 1.0), "x[1, 1] was not set correctly.");
  assert(Util.compareReal(x[1, 2], 2.0), "x[1, 2] was not set correctly.");
  assert(Util.compareReal(x[2, 1], 2.0), "x[2, 1] was not set correctly.");
  assert(Util.compareReal(x[2, 2], 4.0), "x[2, 2] was not set correctly.");
  assert(Util.compareReal(x[3, 1], 3.0), "x[3, 1] was not set correctly.");
  assert(Util.compareReal(x[3, 2], 6.0), "x[3, 2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to have multiple iterators in one
        for-equation.</html>"));
end MultiIterator;
