within ModelicaCompliance.Algorithms.For;

model ScalarRange
  extends Icons.TestCase;

  Real x;
algorithm
  for i in 1 loop
    x := i;
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of a scalar range in a for-statement, which is not
        allowed since the iteration expression must be a vector expression.</html>"));
end ScalarRange;
