declare function local:case($x){
(
  <rect width="{$x}" height="{$x}" style="fill:black;stroke:black"/>
)
};

<svg xmlns="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    version="1.1"
    width="1000px"
    height="1000px">
    <title>SVG Triche</title>
    <desc>YOLO!</desc>

{
  for $i in (100)

  return(local:case($i))
}
</svg>
