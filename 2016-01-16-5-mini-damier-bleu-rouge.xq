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
  for $ax in (5, 15, 25, 35, 45)
  for $ay in (5, 15, 25, 35, 45)
  for $x in (10, 20, 30, 40, 50)
  for $y in (10, 20, 30, 40, 50)
  for $c in (1 to 5)

  for $i in (0 to 10)
  let $d := $i*5

  return(
    local:case($x,$y,$c)
  ,
    local:case($ax, $ay, $c)
  ,
  <line x1="5" y1="{5+$d}" x2="55" y2="{5+$d}" style="stroke:blue"/>
  ,
  <line x1="{5+$d}" y1="5" x2="{5+$d}" y2="55" style="stroke:blue" />
  )
}
</svg>
