<html lang="fr">
  <head>
    <title>Index</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <h1>Dictionnaire</h1>
    {
    for $e in //entry
    where starts-with($e//orth/text(), "A")
    order by $e ascending
    return
      <article>
      <h2>{$e/form/orth/text()}</h2>
      <ul>
        {for $a in $e//author

         return <li>{$a/text())}</li>
       }
      </ul>
      </article>
    }
  </body>
</html>
