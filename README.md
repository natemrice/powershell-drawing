This is a powershell script that can take any image and render it to the PowerShell commandline, pixel by pixel. Most command lines are 120 columns by default so you want a picture that's smaller than that.

Use the DrawPicture.ps1 file by typing:

 	.\DrawPicture.ps1 .\picture.png
  
  or

	.\DrawPicture.ps1 -path C:\full\path\picture.png
	
You can also render any image from the web with the DrawPicture-FromWeb.ps1 like so:

	.\DrawPicture-FromWeb.ps1 https://addons.thunderbird.net/user-media/addon_icons/347/347802-64.png?modified=1322749240

Enjoy.

<img src="https://raw.githubusercontent.com/natemrice/reddit-powershell-drawing/master/console-fromweb.png"></img>

Here's a demo of it in action:

<video controls>
<source type="video/mp4" src="https://raw.githubusercontent.com/natemrice/reddit-powershell-drawing/master/demo.mp4">
</video>

<img src="https://raw.githubusercontent.com/natemrice/reddit-powershell-drawing/master/demo.gif"></img>



Copyright 2019 naterice.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
