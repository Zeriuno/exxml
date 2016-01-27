Requête XQuery pour faire de chaque entry dans le dictionnaire.
De M. Issac, tous droits réservés.


<html lang="fr">
  <head>
    <title>Index</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <ul>
    {
     for $v in //orth/text()
     where string-length(//orth/text()) > 0
     order by $v ascending
     return <li>{$v}</li>
    }
    </ul>
  </body>
</html>
