within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing11
  extends Icons.TestCase;

  Integer x[3, 2] = {{1, 2}, {3, 4}, {8, 9}};
  Integer y[1, 2];
equation
  y = x[{2}, :];
  
  assert(y[1, 1] == 3, "The element of y[1, 1] must be 3");
  assert(y[1, 2] == 4, "The element of y[1, 2] must be 4");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve the second row of the matrix as the row matrix.</html>"));
end ArrayIndexing11;
