<svg xmlns="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    version="1.1"
    width="1000px"
    height="1000px">
<title>SVG 1</title>
<desc>Premier SVG que j'ai écrit avec mes petites mains qui m'appartiennent à moi tout seul parce que sinon ce serait problématique</desc>
{
for $i in (0 to 10)
let $d := $i*50
return (
  <line x1="50" y1="{50+$d}" x2="550" y2="{50+$d}" style="stroke:black"/>
  ,
  <line x1="{50+$d}" y1="50" x2="{50+$d}" y2="550" style="stroke:black" />
  )
}
</svg>
