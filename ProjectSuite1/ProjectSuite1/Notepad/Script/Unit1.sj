function Main()
{
  try
  {
    // Enter your code here. 
  }
  catch(exception)
  {
    Log.Error("Exception", exception.description);
  }
}


function Test1()
{
  var  folderView;
  var  wndNotepad;
  var  edit;
  var  notepad;
  folderView = Aliases.Explorer.wndProgman.SHELLDLL_DefView.FolderView;
  folderView.DblClickItem("Bionic Tanya", 0);
  wndNotepad = Aliases.NOTEPAD.wndNotepad;
  edit = wndNotepad.Edit;
  edit.Click(92, 10);
  edit.Keys(" me and");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, cmpEqual, "hello me and", false);
  wndNotepad.MainMenu.Click("File|Save");
  wndNotepad.Close();
  folderView.ClickR(177, 207);
  folderView.PopupMenu.Click("New|[3]");
  folderView.Click(285, 288);
  folderView.DblClickItem("New Text Document", 0);
  notepad = Aliases.NOTEPAD;
  wndNotepad = notepad.wndNotepad;
  wndNotepad.MainMenu.Click("File|Open...");
  notepad.dlgOpen.SHELLDLL_DefView.FolderView.DblClickItem("Bionic Tanya", 0);
  wndNotepad.Close();
}
