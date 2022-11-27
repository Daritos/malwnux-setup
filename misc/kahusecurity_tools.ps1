[Hashtable[]]$dl_list = $null

$dl_list += @{url="https://www.kahusecurity.com/tools/APIDumper_v0.1.7z"; name="APIDumper_v0.1.7z"; folder="APIDumper"}
$dl_list += @{url="https://www.kahusecurity.com/tools/BinaryFileConverter_v0.1.7z"; name="BinaryFileConverter_v0.1.7z"; folder="BinaryFileConverter"}
$dl_list += @{url="https://www.kahusecurity.com/tools/CMDWatcher_v0.4.7z"; name="CMDWatcher_v0.4.7z"; folder="CMDWatcher"}
$dl_list += @{url="https://www.kahusecurity.com/tools/Converter_v0.14.7z"; name="Converter_v0.14.7z"; folder="Converter"}
$dl_list += @{url="https://www.kahusecurity.com/tools/ConverterNET_v0.1.7z"; name="ConverterNET_v0.1.7z"; folder="ConverterNET"}
$dl_list += @{url="https://www.kahusecurity.com/tools/CoverFire_v0.1.7z"; name="CoverFire_v0.1.7z"; folder="CoverFire"}
$dl_list += @{url="https://www.kahusecurity.com/tools/DataConverter_v0.10.7z"; name="DataConverter_v0.10.7z"; folder="DataConverter"}
$dl_list += @{url="https://www.kahusecurity.com/tools/DifferenceCalculator_v0.1.7z"; name="DifferenceCalculator_v0.1.7z"; folder="DifferenceCalculator"}
$dl_list += @{url="https://www.kahusecurity.com/tools/FileConverter_v0.7.7z"; name="FileConverter_v0.7.7z"; folder="FileConverter"}
$dl_list += @{url="https://www.kahusecurity.com/tools/JSDeobfuscator_v0.3.7z"; name="JSDeobfuscator_v0.3.7z"; folder="JSDeobfuscator"}
$dl_list += @{url="https://www.kahusecurity.com/tools/JSPacker_v0.1.7z"; name="JSPacker_v0.1.7z"; folder="JSPacker"}
$dl_list += @{url="https://www.kahusecurity.com/tools/PHPConverter_v0.3.7z"; name="PHPConverter_v0.3.7z"; folder="PHPConverter"}
$dl_list += @{url="https://www.kahusecurity.com/tools/Pinpoint_v0.2.7z"; name="Pinpoint_v0.2.7z"; folder="Pinpoint"}
$dl_list += @{url="https://www.kahusecurity.com/tools/PSUnveil_v0.3.7z"; name="PSUnveil_v0.3.7z"; folder="PSUnveil"}
$dl_list += @{url="https://www.kahusecurity.com/tools/RegistryDumper_v0.2.7z"; name="RegistryDumper_v0.2.7z"; folder="RegistryDumper"}
$dl_list += @{url="https://www.kahusecurity.com/tools/Reneo_v0.4.7z"; name="Reneo_v0.4.7z"; folder="Reneo"}
$dl_list += @{url="https://www.kahusecurity.com/tools/Revelo_v0.6.7z"; name="Revelo_v0.6.7z"; folder="Revelo"}
$dl_list += @{url="https://www.kahusecurity.com/tools/SandboxTester.7z"; name="SandboxTester.7z"; folder="SandboxTester"}
$dl_list += @{url="https://www.kahusecurity.com/tools/Scout_v0.2.7z"; name="Scout_v0.2.7z"; folder="Scout"}
$dl_list += @{url="https://www.kahusecurity.com/tools/ScriptDecoder_v0.1.7z"; name="ScriptDecoder_v0.1.7z"; folder="ScriptDecoder"}
$dl_list += @{url="https://www.kahusecurity.com/tools/ScriptDeobfuscator_v0.2.7z"; name="ScriptDeobfuscator_v0.2.7z"; folder="ScriptDeobfuscator"}
$dl_list += @{url="https://www.kahusecurity.com/tools/SecretDecoderRing.7z"; name="SecretDecoderRing.7z"; folder="SecretDecoderRing"}
$dl_list += @{url="https://www.kahusecurity.com/tools/Sounder_v0.2.7z"; name="Sounder_v0.2.7z"; folder="Sounder"}
$dl_list += @{url="https://www.kahusecurity.com/tools/spidermonkey-1.8.5.7z"; name="spidermonkey-1.8.5.7z"; folder="spidermonkey"}
$dl_list += @{url="https://www.kahusecurity.com/tools/TextDecoderToolkit_v0.2.7z"; name="TextDecoderToolkit_v0.2.7z"; folder="TextDecoderToolkit"}
$dl_list += @{url="https://www.kahusecurity.com/tools/URLMonitor_v0.1.7z"; name="URLMonitor_v0.1.7z"; folder="URLMonitor"}
$dl_list += @{url="https://www.kahusecurity.com/tools/URLRevealer_v0.2.7z"; name="URLRevealer_v0.2.7z"; folder="URLRevealer"}
$dl_list += @{url="https://www.kahusecurity.com/tools/WelcomeMat_v0.1.7z"; name="WelcomeMat_v0.1.7z"; folder="WelcomeMat"}
$dl_list += @{url="https://www.kahusecurity.com/tools/Word2Dec_v0.1.7z"; name="Word2Dec_v0.1.7z"; folder="Word2Dec"}
$dl_list += @{url="https://www.kahusecurity.com/tools/ZeuSENCDecrypter.7z"; name="ZeuSENCDecrypter.7z"; folder="ZeuSENCDecrypter"}

foreach ($item in $dl_list)
{
    Invoke-WebRequest -Uri $item.url -OutFile $item.name
    7z x "$($item.name)" * -o"$($item.folder)"  -y -p"kahusecurity"
}

Invoke-WebRequest -Uri "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-windows.zip" -OutFile "phantomjs-2.1.1-windows.zip"
7z e phantomjs-2.1.1-windows.zip -oJSPacker -y *.exe -r
7z e phantomjs-2.1.1-windows.zip -oScout -y *.exe -r
7z e phantomjs-2.1.1-windows.zip -oSounder -y *.exe -r