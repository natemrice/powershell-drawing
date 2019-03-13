#
# Use by typing: 
# 	.\DrawPicture-FromWeb.ps1 "https://f.thumbs.redditmedia.com/q9-214SeFCz5O0ik.png"
#
# Date: 2019-03-12
#
param([String] [parameter(mandatory = $true)] $url)

[void] [System.Reflection.Assembly]::LoadWithPartialName('System.drawing')
$pic = Invoke-WebRequest $url
$BitMap = [System.Drawing.Bitmap]::FromStream($pic.RawContentStream)


$ansi_escape = [char]27

Function DrawColor{
	param([decimal]$r, [decimal]$g, [decimal]$b)

	$ansi_command = "$ansi_escape[48;2;{0};{1};{2}m" -f $r, $g, $b
	$text = " "
	$ansi_terminate = "$ansi_escape[0m"
	$out = $ansi_command + $text + $ansi_terminate
	write-host -nonewline $out
}

Foreach($y in (0..($BitMap.Height-1))){ 
	Foreach($x in (0..($BitMap.Width-1))){ 
		$Pixel = $BitMap.GetPixel($X,$Y)         
		DrawColor -r $($Pixel).R -g $($Pixel).G -b $($Pixel).B
	}
	Write-Host ""
}

$BitMap.dispose()