<svg xmlns="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    version="1.1"
    width="1000px"
    height="1000px">
<title>SVG 1</title>
<desc>Premier SVG que j'ai écrit avec mes petites mains qui m'appartiennent à moi tout seul parce que sinon ce serait problématique</desc>
{
for $i in (1, 2, 3, 4, 5)
let $d := $i*10
return (
  <line x1="100" y1="{100+$d}" x2="1000" y2="{100+$d}" style="stroke:black"/>
  ,
  <line x1="{100+$d}" y1="100" x2="{100+$d}" y2="100" style="stroke:red" />
  )
}
</svg>
