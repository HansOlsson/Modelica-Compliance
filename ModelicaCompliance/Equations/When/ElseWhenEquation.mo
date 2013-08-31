within ModelicaCompliance.Equations.When;

model ElseWhenEquation
  extends Icons.TestCase;

  Boolean close;
  parameter Real x = 5;
equation
  when x > 5 then
    close = true;
  elsewhen x <= 5 then
    close = false;
  end when;

  assert(close == false, "close was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.5", "8.3.5.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests elsewhen-equation.</html>"));
end ElseWhenEquation;