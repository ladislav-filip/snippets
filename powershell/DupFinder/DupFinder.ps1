s:\ReSharper-CommandLineTools\dupfinder.exe /output="s:\dupFinder.xml" /show-text "S:\vyvoj\home\net\Imatrade\Imatrade.Registr\Core\ImageManager.cs"


$XslPatht = New-Object System.Xml.Xsl.XslCompiledTransform
$XslPatht.Load("s:\ReSharper-CommandLineTools\dupfinder.xsl")
$XslPatht.Transform("s:\dupFinder.xml", "s:\dupFinder.html")