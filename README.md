This is a powershell script that can take any image and render it to the PowerShell commandline, pixel by pixel. Most command lines are 120 columns by default so you want a picture that's smaller than that.

You can just run the included reddit-drawing.ps1 or use the DrawPicture.ps1 file to draw any picture you like. Use the DrawPicture.ps1 file by typing:

 	.\DrawPicture.ps1 .\picture.png
  
  or

	.\DrawPicture.ps1 -path C:\full\path\picture.png
	
You can also render any image from the web with the DrawPicture-FromWeb.ps1 like so:

	.\DrawPicture-FromWeb.ps1 https://addons.thunderbird.net/user-media/addon_icons/347/347802-64.png?modified=1322749240

Enjoy.

<img src="https://raw.githubusercontent.com/natemrice/reddit-powershell-drawing/master/console.png"></img>

<img src="https://raw.githubusercontent.com/natemrice/reddit-powershell-drawing/master/console-fromweb.png"></img>

Here's a demo of it in action:

<video controls>
<source type="video/mp4" src="https://raw.githubusercontent.com/natemrice/reddit-powershell-drawing/master/demo.mp4">
</video>

<img src="https://raw.githubusercontent.com/natemrice/reddit-powershell-drawing/master/demo.gif"></img>
