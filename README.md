# Calcul de la clé NIR
# Description du NIR
   Le numéro NIR (Numéro d'Inscription au Répertoire) est le numéro d'inscription au répertoire national d'identification des personnes physiques, et il est identique au numéro de sécurité sociale. La gestion du numéro NIR a été confiée à l'INSEE, c'est pourquoi on parle parfois aussi du numéro INSEE.

   Ce numéro sert d'identifant unique pour chaque individu inscrit au RNIPP (Répertoire National d'Identification des Personnes Physiques).

   La clé du numéro NIR est constituée de 2 chiffres et est comprise entre 01 et 97. Elle permet de vérifier la validité des 13 chiffres du numéro, grâce à un algorithme qui lui est appliqué.

# Algorithme de calcul de la clé du numéro:
   La clé NIR est calculée par une formule mathématique, qui ne peut s'appliquer que sur des valeurs numériques. Il convient donc de remplacer les lettres présentes dans les départements corses :
2A va devenir 19 et 2B devient 18.

  La clé peut alors être calculée avec la formule suivante :

Clé NIR = 97 - ( ( Valeur numérique du NIR ) modulo 97 )

Calculez la clé d'un NIR
