/*Code de Fabrice Issac, tous droits réservés*/
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
<title>Ma figure</title>
<desc>Description de ma figure</desc>

{
  local:case(100,100,100)
}
</svg>
