within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionMin
  extends Icons.TestCase;
  
  
  Real minimum;
equation
  minimum = min({1, -1, 7}); 
  
  assert(Util.compareReal(minimum, -1.0), "The value of minimum should be -1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function min is possible.</html>"));
end ArrayReductionMin;
