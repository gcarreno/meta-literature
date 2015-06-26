program metaliterature;

{$mode objfpc} {$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, GCarreno.MetaLit.Forms.Main
  { you can add units after this };

{$R *.res}

begin
  Application.Title := 'Meta-Literature';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

