function [mittelwert_approx,varianz_approx] = MonteCarlo(Mittelwert,Varianz)
%% 1) Erstellt eine Normalverteilung "pd" % mit dem Mittelwert und der Varianz, die der Funktion übergeben werden.
% Befehl: makedist (-> doc makedist ) 
% Achtung: Die Standardabweichung ist die Wurzel aus der Varianz



%% 2) Erstellt eine for-Schleife und ziehe 10000 mal aus der Verteilung
% Befehl: sample = random(pd)
% Speichert alle samples in einem Vektor



%% 3) Berechnet umgekehrt den Mittelwert und Varianz aus dem sample-Vektor
% Befehle: mean, std/var

mittelwert_approx = []; % überschreiben
varianz_approx = []; % überschreiben
end 

