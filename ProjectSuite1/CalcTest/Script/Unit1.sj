function Main()
{
  try
  {
    Summ();
    Malt();
    
  }
  catch(exception)
  {
    Log.Error("Exception", exception.description);
  }
}

function Summ()
{
  TestedApps.Calc.Run();
  Aliases.Calc.wndCalculator.btn2.ClickButton();
  Aliases.Calc.wndCalculator.btn.ClickButton();
  Aliases.Calc.wndCalculator.btn2.ClickButton();
  Aliases.Calc.wndCalculator.btn1.ClickButton();
  aqObject.CompareProperty(Aliases.Calc.wndCalculator.Edit.wText, 0, "5. ", false);
  Aliases.Calc.wndCalculator.Close();
}

function Malt()
{
  var  wndCalculator;
  var  btn;
  var  btn2;
  TestedApps.Calc.Run();
  wndCalculator = Aliases.Calc.wndCalculator;
  wndCalculator.btn3.ClickButton();
  btn = wndCalculator.btn4;
  btn.ClickButton();
  wndCalculator.btn41.ClickButton();
  btn2 = wndCalculator.btn1;
  btn2.ClickButton();
  btn.ClickButton();
  wndCalculator.btn6.ClickButton();
  btn2.ClickButton();
  aqObject.CompareProperty(Aliases.Calc.wndCalculator.Edit.wText, cmpEqual, "72. ", false);
  wndCalculator.Close();
}
