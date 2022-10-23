function istprimzahl = PrimzahlCheck(testzahl)

% Variable "istprimzahl" wird am Anfang auf 1 ("wahr") gesetzt
istprimzahl = 1;

% Die Testzahl wird in einer Schleife durch alle kleineren Zahlen geteilt, beginnend mit der 2
% Sobald der Rest der ganzzahligen Divison (Modulo-Operator) 0 ist, wurde ein Teiler gefunden. Die Testzahl ist dann keine
% Primzahl -> Variable "istprimzahl" wird dann mit 0 ("falsch") überschrieben und die Schleife wird abgebrochen. Falls im ganzen
% Schleifendurchlauf aber kein ganzzahliger Teiler gefunden wurde, behält "istprimzahl" ihren Wert "wahr"
for ii = 2:(testzahl-1)
    
    if mod(testzahl, ii) == 0
        istprimzahl = 0;
        break;
    end
    
end

end
