[Setup]
AppId={{96BC5CC7-C522-4883-BCCD-0F5B6CF1131D}
AppName="libad9361"
AppVersion="0.2"
AppPublisher="Analog Devices, Inc."
AppPublisherURL="http://www.analog.com"
AppSupportURL="http://www.analog.com"
AppUpdatesURL="http://www.analog.com"
AppCopyright="Copyright 2015- ADI and other contributors"
CreateAppDir=no
LicenseFile="C:\projects\libad9361-iio\LICENSE"
OutputBaseFilename=libad9361-setup
OutputDir="C:\"
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Files]
Source: "C:\projects\libad9361-iio\build-win32\Release\libad9361.dll"; DestDir: "{sys}"; Flags: 32bit
Source: "C:\projects\libad9361-iio\build-win64\Release\libad9361.dll"; DestDir: "{sys}"; Check: Is64BitInstallMode

Source: "C:\projects\libad9361-iio\build-win32\test\Release\*.exe"; DestDir: "{sys}"; Check: not Is64BitInstallMode
Source: "C:\projects\libad9361-iio\build-win64\test\Release\*.exe"; DestDir: "{sys}"; Check: Is64BitInstallMode

Source: "C:\projects\libad9361-iio\build-win32\Release\libad9361.lib"; DestDir: "{pf32}\Microsoft Visual Studio 12.0\VC\lib"; Check: not Is64BitInstallMode
Source: "C:\projects\libad9361-iio\build-win64\Release\libad9361.lib"; DestDir: "{pf32}\Microsoft Visual Studio 12.0\VC\lib\amd64"; Check: Is64BitInstallMode
Source: "C:\projects\libad9361-iio\ad9361.h"; DestDir: "{pf32}\Microsoft Visual Studio 12.0\VC\include"
Source: "C:\projects\libad9361-iio\bindings\matlab\ad9361-wrapper.h"; DestDir: "{pf32}\Microsoft Visual Studio 12.0\VC\include"

Source: "C:\libiio-win32\libiio.dll"; DestDir: "{sys}"; Flags: onlyifdoesntexist 32bit
Source: "C:\libiio-win64\libiio.dll"; DestDir: "{sys}"; Check: Is64BitInstallMode; Flags: onlyifdoesntexist

Source: "C:\libiio-win32\libxml2.dll"; DestDir: "{sys}"; Flags: onlyifdoesntexist 32bit
Source: "C:\libiio-win64\libxml2.dll"; DestDir: "{sys}"; Check: Is64BitInstallMode; Flags: onlyifdoesntexist

Source: "C:\libiio-win32\libusb-1.0.dll"; DestDir: "{sys}"; Flags: onlyifdoesntexist 32bit
Source: "C:\libiio-win64\libusb-1.0.dll"; DestDir: "{sys}"; Check: Is64BitInstallMode; Flags: onlyifdoesntexist

Source: "C:\libiio-win32\libserialport-0.dll"; DestDir: "{sys}"; Flags: onlyifdoesntexist 32bit
Source: "C:\libiio-win64\libserialport-0.dll"; DestDir: "{sys}"; Check: Is64BitInstallMode; Flags: onlyifdoesntexist

Source: "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\redist\x86\Microsoft.VC120.CRT\msvcr120.dll"; DestDir: "{sys}"; Flags: onlyifdoesntexist 32bit
Source: "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\redist\x64\Microsoft.VC120.CRT\msvcr120.dll"; DestDir: "{sys}"; Check: Is64BitInstallMode; Flags: onlyifdoesntexist
