#
# Use by typing: 
# 	.\DrawPicture.ps1 .\picture.png
#
#	.\DrawPicture.ps1 -path C:\full\path\picture.png
#
# Date: 2019-03-12
#

param([String] [parameter(mandatory = $true)] $path)

[void] [System.Reflection.Assembly]::LoadWithPartialName('System.drawing') 
$BitMap = [System.Drawing.Bitmap]::FromFile((Get-Item $path).fullname) 

$ansi_escape = [char]27
$color_string = ""
Function DrawColor{
	param([decimal]$r, [decimal]$g, [decimal]$b)

	$ansi_command = "$ansi_escape[48;2;{0};{1};{2}m" -f $r, $g, $b
	$text = " "
	$ansi_terminate = "$ansi_escape[0m"
	$out = $ansi_command + $text + $ansi_terminate
	$script:color_string += $out
}

Foreach($y in (0..($BitMap.Height-1))){ 	
	if ($y % 2) {continue} else {$color_string += "`n"}
	Foreach($x in (0..($BitMap.Width-1))){ 
		$Pixel = $BitMap.GetPixel($X,$Y)         
		DrawColor -r $($Pixel).R -g $($Pixel).G -b $($Pixel).B
	}
}

$color_string

