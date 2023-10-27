unit uUnitTest;

interface
uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TMyTestObject = class(TObject) 
  public
  end;

implementation


initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);
end.
