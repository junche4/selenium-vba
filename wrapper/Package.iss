; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SeleniumWrapper"
#define MyDllName "SeleniumWrapper"
#define MyAppLongName "Selenium Wrapper"
#define MyAppVersion GetFileVersion(".\bin\Release\SeleniumWrapper.dll")
#define MyAppPublisher "Florent BREHERET"
#define MyAppURL "http://code.google.com/p/selenium-vba/"
#define MyVersion() ParseVersion(".\bin\Release\SeleniumWrapper.dll", Local[0], Local[1], Local[2], Local[3]), Str(Local[0]) + "." + Str(Local[1]) + "." + Str(Local[2]);
#define XPIVersion "1.0.11.0"
    
[Setup]
AppId={#MyAppName}
PrivilegesRequired=poweruser
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
VersionInfoTextVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
UsePreviousAppDir=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=.\License.txt
;InfoBeforeFile=.\ClassLibrary1\bin\Release\Info.txt
OutputDir="."
OutputBaseFilename=SeleniumWrapperSetup-{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: ".\bin\Release\*.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: ".\bin\Release\*.pdb"; DestDir: "{app}"; Flags: ignoreversion 
Source: ".\References\phantomjs.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\References\chromedriver.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\References\IEDriverServer.exe"; DestDir: "{app}"; DestName: "IEDriverServer.exe" ; Flags: ignoreversion;
Source: ".\References\IEDriverServer64.exe"; DestDir: "{app}\ie64" ;DestName: "IEDriverServer.exe" ; Flags: ignoreversion; Check: IsWin64;
Source: ".\License.txt"; DestDir: "{app}"; Flags: ignoreversion overwritereadonly ; Attribs:readonly
Source: ".\Readme.txt"; DestDir: "{app}"; Flags: ignoreversion overwritereadonly ; Attribs:readonly
Source: ".\ChangeLog.txt"; DestDir: "{app}"; Flags: ignoreversion overwritereadonly ; Attribs:readonly
Source: ".\chm\SeleniumWrapperApi.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\QuickTest.vbs"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Examples\*.*"; DestDir: "{app}\Examples"; Flags: ignoreversion skipifsourcedoesntexist overwritereadonly ; Attribs:readonly
Source: ".\Templates\*.dot" ; DestDir: "{userappdata}\Microsoft\Templates"; Flags: ignoreversion skipifsourcedoesntexist overwritereadonly ; Attribs:readonly
Source: ".\Templates\*.xlt" ; DestDir: "{userappdata}\Microsoft\Templates"; Flags: ignoreversion skipifsourcedoesntexist overwritereadonly ; Attribs:readonly
Source: "..\formatters\SeleniumVbFormatters-{#XPIVersion}.xpi" ; DestDir: "{app}";
Source: ".\exe.config" ; DestDir: "{win}\SYSTEM32"; DestName: "wscript.exe.config"; Flags: ignoreversion uninsneveruninstall
Source: ".\exe.config" ; DestDir: "{code:GetAppFolder|Excel.Application}"; DestName: "excel.exe.config"; Flags: ignoreversion uninsneveruninstall; Check: IsWin64;
Source: ".\exe.config" ; DestDir: "{code:GetAppFolder|Word.Application}"; DestName: "winword.exe.config"; Flags: ignoreversion uninsneveruninstall; Check: IsWin64;
Source: ".\exe.config" ; DestDir: "{code:GetAppFolder|PowerPoint.Application}"; DestName: "powerpnt.exe.config"; Flags: ignoreversion uninsneveruninstall; Check: IsWin64;
Source: ".\exe.config" ; DestDir: "{code:GetAppFolder|Access.Application}"; DestName: "msaccess.exe.config"; Flags: ignoreversion uninsneveruninstall; Check: IsWin64;
Source: ".\exe.config" ; DestDir: "{code:GetAppFolder|Outlook.Application}"; DestName: "outlook.exe.config"; Flags: ignoreversion uninsneveruninstall; Check: IsWin64;

[Icons]
;Name: "{group}\Readme"; Filename: "{app}\Readme.txt"; WorkingDir: "{app}";
Name: "{group}\Project Home Page"; Filename: "http://code.google.com/p/selenium-vba/"; WorkingDir: "{app}";
Name: "{group}\Excel Template"; Filename: "{userappdata}\Microsoft\Templates\SeleniumWrapper.xlt"; WorkingDir: "{app}";
Name: "{group}\Word Template"; Filename: "{userappdata}\Microsoft\Templates\SeleniumWrapper.dot"; WorkingDir: "{app}";
Name: "{group}\Examples"; Filename: "{app}\Examples"; WorkingDir: "{app}";
Name: "{group}\QuickTest"; Filename: "{app}\QuickTest.vbs"; WorkingDir: "{app}";
Name: "{group}\API documentation"; Filename: "{app}\SeleniumWrapperApi.chm"; WorkingDir: "{app}";
Name: "{group}\ChangeLog"; Filename: "{app}\ChangeLog.txt"; WorkingDir: "{app}";
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Registry]
;clean com objects in the registry
Root: HKCR32; Subkey: "TypeLib\{{E57E03DE-C7FE-4C12-85C8-EC8B32DFFB86}"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "TypeLib\{{E57E03DE-C7FE-4C12-85C8-EC8B32DFFB86}"; Flags: deletekey uninsdeletekey; Check: IsWin64;

Root: HKCR32; Subkey: "CLSID\{{E57E03DE-C7FE-4C12-85C8-EC8B32DFFB86}"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "CLSID\{{E57E03DE-C7FE-4C12-85C8-EC8B32DFFB86}"; Flags: deletekey uninsdeletekey; Check: IsWin64;

Root: HKCR32; Subkey: "SeleniumWrapper.WebDriver"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "SeleniumWrapper.WebDriver"; Flags: deletekey uninsdeletekey; Check: IsWin64;
Root: HKCR32; Subkey: "CLSID\{{432B62A5-6F09-45CE-B10E-E3CCFFAB4234}"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "CLSID\{{432B62A5-6F09-45CE-B10E-E3CCFFAB4234}"; Flags: deletekey uninsdeletekey; Check: IsWin64;

Root: HKCR32; Subkey: "SeleniumWrapper.Assembly"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "SeleniumWrapper.Assembly"; Flags: deletekey uninsdeletekey; Check: IsWin64;
Root: HKCR32; Subkey: "CLSID\{{5BDDC122-7092-453F-8486-DBC455180DE3}"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "CLSID\{{5BDDC122-7092-453F-8486-DBC455180DE3}"; Flags: deletekey uninsdeletekey; Check: IsWin64;

Root: HKCR32; Subkey: "SeleniumWrapper.PdfFile"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "SeleniumWrapper.PdfFile"; Flags: deletekey uninsdeletekey; Check: IsWin64;
Root: HKCR32; Subkey: "CLSID\{{980551C8-0DEB-4774-8A07-CDCD9EB97FD6}"; Flags: deletekey uninsdeletekey
Root: HKCR64; Subkey: "CLSID\{{980551C8-0DEB-4774-8A07-CDCD9EB97FD6}"; Flags: deletekey uninsdeletekey; Check: IsWin64;

Root: HKCU; Subkey: {code:GetTrustedLocation|}; ValueType: string; ValueName: "Path"; ValueData: "{app}\Examples"; Flags: uninsdeletekey;

;Fix for KB907417 / get around with exe.config 
;Root: HKLM; Subkey: "SOFTWARE\Microsoft\.NETFramework\Policy\AppPatch\v2.0.50727.00000\excel.exe"; Flags: deletekey
;Root: HKLM; Subkey: "SOFTWARE\Microsoft\.NETFramework\Policy\AppPatch\v2.0.50727.00000\winword.exe"; Flags: deletekey

[Run] 
Filename: "{dotnet2064}\RegAsm.exe"; Parameters: {#MyDllName}.dll /codebase /tlb:{#MyDllName}.tlb; WorkingDir: {app}; StatusMsg: "Registering {#MyDllName} dll"; Flags: runhidden; Check: IsWin64;
Filename: "{dotnet2032}\RegAsm.exe"; Parameters: {#MyDllName}.dll /codebase /tlb:{#MyDllName}.tlb; WorkingDir: {app}; StatusMsg: "Registering {#MyDllName} dll"; Flags: runhidden;
Filename: "{pf32}\Mozilla Firefox\firefox.exe"; Parameters: "SeleniumVbFormatters-{#XPIVersion}.xpi"; WorkingDir: {app}; Flags: shellexec postinstall; Description: "Install Addon for Firefox-Selenium IDE";

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

[UninstallRun]
Filename: "{dotnet2064}\RegAsm.exe"; Parameters: {#MyDllName}.dll /unregister /tlb:{#MyDllName}.tlb; WorkingDir: {app}; StatusMsg: "Unregistering {#MyDllName} dll"; Flags: runhidden; Check: IsWin64;
Filename: "{dotnet2032}\RegAsm.exe"; Parameters: {#MyDllName}.dll /unregister /tlb:{#MyDllName}.tlb; WorkingDir: {app}; StatusMsg: "Unregistering {#MyDllName} dll"; Flags: runhidden;

[Code]
var _AppDir: String;
var _Version: String;
var _IsWin32: Boolean;
var _IsExcel32: Boolean;
var _IsExcel64: Boolean;
var _IsExcel2003: Boolean;
var _IsExcel2007orSup: Boolean;

//---------------------------------------------------------------------------------------
// Excel functions
//--------------------------------------------------------------------------------------- 
function GetAppFolder(app: String): string;
  var clsid: String; server: String; ret: String; succeed: boolean;
  Begin
    succeed:= RegQueryStringValue(HKCR32, app + '\CLSID', '', clsid);
    if not succeed And IsWin64 then succeed:= RegQueryStringValue(HKCR64, app + '\CLSID', '', clsid);
    if succeed then Begin
        succeed:= RegQueryStringValue(HKCR32, 'CLSID\' + clsid + '\LocalServer32', '', server);
        if not succeed And IsWin64 then succeed:= RegQueryStringValue(HKCR64, 'CLSID\' + clsid + '\LocalServer', '', server);
        if succeed then Begin
          ret := RemoveQuotes(Trim(Copy( server , 0, Pos('.EXE', server ) + 3 )));
          Result := ExtractFileDir(ret);
        end;
    end;
  end;

function GetExcelVersionStr(): String;
  var lVersion: String; i: Integer;
  begin
    if _Version='' then begin
      if RegKeyExists(HKCR,'Excel.Application\CurVer') then begin
        RegQueryStringValue(HKCR,'Excel.Application\CurVer', '', lVersion);
      end else RaiseException( 'Failed to detect Excel version!' );
      for i := 1 to Length(lVersion) do
          if (lVersion[i] >= '0') and (lVersion[i] <= '9') then _Version := _Version + lVersion[i];
    end
    Result := _Version;
  end;

function GetTrustedLocation(app: String): string;
  var base: string; i : integer;
  Begin
    base := 'Software\Microsoft\Office\' + GetExcelVersionStr() + '.0';
    if RegKeyExists(HKCU, base) then begin
        for i := 0 to 10 do begin
           Result := base + '\Excel\Security\Trusted Locations\Location' + IntToStr(i);
           if not RegKeyExists(HKCU, Result) then break;
        end;
    end
  end;

//---------------------------------------------------------------------------------------
// Status
//---------------------------------------------------------------------------------------
function IsWin32(): Boolean;
  begin
    if not _IsWin32 then _IsWin32 := Not IsWin64();
    Result := _IsWin32;
  end;

function IsExcel64(): Boolean;
  begin
    if not _IsExcel64 then _IsExcel64 := IsWin64() and RegKeyExists(HKLM64,'SOFTWARE\Microsoft\Office\' + GetExcelVersionStr() + '.0\Excel');
    Result := _IsExcel64;
  end;

function IsExcel32(): Boolean;
  begin
    if not _IsExcel32 then _IsExcel32 := Not IsExcel64();
    Result := _IsExcel32;
  end;

function IsExcel2003orInf(): Boolean;
  begin
    Result := StrToIntDef(GetExcelVersionStr(), 0) < 12;
  end;
 
function AppDir(argument : String): String;
  begin
    if _AppDir = '' then begin
        if IsWin64() then _AppDir := ExpandConstant('{pf64}\{#MyAppName}') else _AppDir := ExpandConstant('{pf32}\{#MyAppName}');
    end
    Result := _AppDir;
  end;

Function CheckDotNetFramework() : boolean;
  var
    iResultCode: Integer;
  Begin
    Result := RegKeyExists(HKLM32,'SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5');
    if not Result And IsWin64 then Result:= RegKeyExists(HKLM64,'SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5');
    If not Result Then Begin
      MsgBox(ExpandConstant('Microsoft .NET Framework 3.5 is required !  '+ CHR(13) + 'Please download and install it to continue the installaton.'), mbError, MB_OK);
      ShellExec('open', 'http://www.microsoft.com/en-us/download/details.aspx?id=25150','', '', SW_SHOW, ewNoWait, iResultCode);
    End;
  End;

Function UninstallPrevious() : boolean;
  var
    iResultCode: Integer; sUnInstallString: String;
  Begin
    Result:= RegQueryStringValue(HKLM32, ExpandConstant('SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#MyAppName}_is1'), 'UnInstallString', sUnInstallString);
    if Not Result And IsWin64 then Result:= RegQueryStringValue(HKLM64, ExpandConstant('SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#MyAppName}_is1'), 'UnInstallString', sUnInstallString);
    If Result Then Begin
        Exec( RemoveQuotes(sUnInstallString), '/SILENT', '', SW_SHOW, ewWaitUntilTerminated, iResultCode) ;
        Sleep(1000);
    End;
  End;

Function TestInstallation(): boolean;
  var
    sLibVersion: Variant;
  Begin
    try
      sLibVersion := CreateOleObject(ExpandConstant('{#MyAppName}.Assembly'));
      sLibVersion.GetVersion();
    except
      RaiseException( 'Instalation tests failed ! '#13'Error : ' + GetExceptionMessage );
    end;
  End;

//---------------------------------------------------------------------------------------
// Check on use
//---------------------------------------------------------------------------------------
Function IsOnUse(): boolean;
  var file_tlb: String; file_dll: String;
  Begin
    file_tlb := ExpandConstant('{app}\{#MyDllName}.tlb' );
    file_dll := ExpandConstant('{app}\{#MyDllName}.dll' );
    if FileExists( file_tlb ) and FileExists( file_dll ) then begin
       while not result and not( RenameFile( file_tlb, file_tlb ) and RenameFile( file_dll, file_dll )  )do
           result := IDCANCEL = MsgBox(ExpandConstant('Uninstallation of {#MyAppLongName} is not possible as a program is currently using it.'#13'Close all Office applications and try again.'), mbError, MB_RETRYCANCEL);
    end;
  End;

//---------------------------------------------------------------------------------------
// Workflow
//---------------------------------------------------------------------------------------
Function InitializeSetup() : boolean;
  Begin
    Result := CheckDotNetFramework();
  End;

procedure CurStepChanged(CurStep: TSetupStep);
  begin
    if CurStep = ssInstall  then begin
       UninstallPrevious();
    end Else If CurStep = ssPostInstall then begin
       TestInstallation();
    end;
  end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep); 
  begin
    if CurUninstallStep = usUninstall  then begin
        if IsOnUse then exit
    end;
  end;
