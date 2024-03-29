use strict;
use warnings;
use WWW::Mechanize;

# Créer un nouvel objet Mechanize
my $mech = WWW::Mechanize->new();

# Définir l'URL de la page à scraper
my $url = 'https://dalm1chat.online/login';

# Récupérer la page
$mech->get($url);

# Vérifier si la requête a réussi
if ($mech->success()) {
    # Extraire le contenu de la page
    my $content = $mech->content();

    # Faites quelque chose avec le contenu, comme l'analyse
    print $content;
} else {
    # Gérer les erreurs si la requête a échoué
    print "Échec de la récupération de la page : ", $mech->status(), "\n";
}
