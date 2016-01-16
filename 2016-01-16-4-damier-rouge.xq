declare function local:case($x,$y,$c){
(
  <line x1="{$x}" y1="{$y}" x2="{$x}" y2="{$y+$c}" style="stroke:red"/>
  ,
  <line x1="{$x}" y1="{$y+$c}" x2="{$x+$c}" y2="{$y+$c}" style="stroke:red"/>
  ,
  <line x1="{$x+$c}" y1="{$y+$c}" x2="{$x+$c}" y2="{$y}" style="stroke:red"/>
  ,
  <line x1="{$x+$c}" y1="{$y}" x2="{$x}" y2="{$y}" style="stroke:red"/>
)
};

<svg xmlns="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    version="1.1"
    width="1000px"
    height="1000px">
    <title>SVG</title>
    <desc>Ahoy!</desc>

{
  for $ax in (50, 150, 250, 350, 450)
  for $ay in (50, 150, 250, 350, 450)
  for $x in (100, 200, 300, 400, 500)
  for $y in (100, 200, 300, 400, 500)
  for $c in (1 to 50)

  for $i in (0 to 10)
  let $d := $i*50

  return(
    local:case($x,$y,$c)
  ,
    local:case($ax, $ay, $c)
  ,
  <line x1="50" y1="{50+$d}" x2="550" y2="{50+$d}" style="stroke:black"/>
  ,
  <line x1="{50+$d}" y1="50" x2="{50+$d}" y2="550" style="stroke:black" />
  )
}
</svg>
