Requête XQuery pour faire de chaque entry dans le dictionnaire.
De M. Issac (avec des bouts par moi), tous droits réservés.

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
      <i>{$e//gram[@type="pos"]/text()}</i>
      <p>{$e//def/text()}</p>
      </article>
    }
  </body>
</html>
