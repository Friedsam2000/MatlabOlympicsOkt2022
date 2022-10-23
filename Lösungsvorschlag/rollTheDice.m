function Augensumme = rollTheDice(AnzahlWuerfel,AnzahlSeiten)

% Die Funktion randi erzeugt hier einen Vektor mit 1 Zeile und AnzahlWuerfel Spalten,
% bestehend aus Zufallszahlen von 1 bis AnzahlSeiten
WuerfelErgebnis = randi([1,AnzahlSeiten],1,AnzahlWuerfel);

Augensumme = sum(WuerfelErgebnis); 

end