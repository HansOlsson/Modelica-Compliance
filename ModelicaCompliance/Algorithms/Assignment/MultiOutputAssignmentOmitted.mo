within ModelicaCompliance.Algorithms.Assignment;

model MultiOutputAssignmentOmitted
  extends Icons.TestCase;

  function f
    input Real x;
    output Real r1;
    output Real r2;
    output Real r3;
  algorithm
    r1 := x * 2.0;
    r2 := x * 3.0;
    r3 := x * 4.0;
  end f;

  Real x, z;
algorithm
  (x, , z) := f(4.2);

  assert(Util.compareReal(x, 8.4),  "x was not set correctly.");
  assert(Util.compareReal(z, 16.8), "z was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests assignment of multiple result from a function in
        an algorithm section, where some results are omitted.</html>"));
end MultiOutputAssignmentOmitted;
