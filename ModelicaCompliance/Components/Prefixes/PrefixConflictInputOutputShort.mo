within ModelicaCompliance.Components.Prefixes;

model PrefixConflictInputOutputShort
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    output Real x;
  end C;

  connector InputC = input C;
  InputC c(e = 1.0, x = 2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2", "4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the rule that a type prefix is not allowed to be
        applied to a structured component if any of the elements of the component
        has a corresponding type prefix, using a short class definition to apply
        the prefix. In this case input on output.</html>"));
end PrefixConflictInputOutputShort;
