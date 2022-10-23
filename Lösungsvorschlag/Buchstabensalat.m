function salat = Buchstabensalat(Wort)

% Die Variable "Wort" ist eine Zeichenkette. Das ist nichts anderes als ein Vektor, der aus Buchstaben statt Zahlen besteht.
% Beispiel: Wort = 'abcdefg';
% Wie bei Zahlenvektoren kann man auf einzelne Elemente durch Indexierung zugreifen:
% buchstabe = Wort(3);  (-> buchstabe = 'c')
% buchstabe = Wort(5);  (-> buchstabe = 'e')
% Man kann aber auch auf mehrere Elemente des Vektors zugreifen, indem man einen Indexvektor angibt:
% buchstaben = Wort([5,1,3]);  (-> buchstaben = 'eac')
% Eine solche Indexierung kann in dieser Aufgabe genutzt werden

% Die Funktion randperm(n) [random permutation] erzeugt einen Vektor mit den Zahlen von 1 bis n in einer zufälligen Reihenfolge 
permutation_idx = randperm(length(Wort));

% Indexierung mit dem Indexvektor liefer
salat = Wort(permutation_idx);

end 