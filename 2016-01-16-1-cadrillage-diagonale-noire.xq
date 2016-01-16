declare function local:case($x,$y,$c){
(
  <line x1="{$x}" y1="{$y}" x2="{$x}" y2="{$y+$c}" style="stroke:black"/>
  ,
  <line x1="{$x}" y1="{$y+$c}" x2="{$y+$c}" y2="{$y+$c}" style="stroke:black"/>
  ,
  <line x1="{$x+$c}" y1="{$y+$c}" x2="{$x+$c}" y2="{$y}" style="stroke:black"/>
  ,
  <line x1="{$x+$c}" y1="{$y}" x2="{$x}" y2="{$y}" style="stroke:black"/>
)
};

<svg xmlns="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    version="1.1"
    width="1000px"
    height="1000px">
<title>SVGs</title>
<desc>On arrête de compter</desc>
{
for $i in (0 to 10)
for $j in (50, 100, 150, 200, 250, 300, 350, 400, 450, 500)
for $l in (1 to 50)

let $d := $i*50
return (
  <line x1="50" y1="{50+$d}" x2="550" y2="{50+$d}" style="stroke:black"/>
  ,
  <line x1="{50+$d}" y1="50" x2="{50+$d}" y2="550" style="stroke:black" />
  ,
  local:case($j,$j,$l)
  )
}
</svg>
