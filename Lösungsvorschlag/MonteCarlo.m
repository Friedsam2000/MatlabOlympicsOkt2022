function [mean_approx,var_approx] = MonteCarlo(Mittelwert,Varianz)
%% 1) Erstellt eine normalverteilte Wahrscheinlichkeitsverteilung "pd"
% mit dem Mittelwert und der Varianz, die der Funtkion übergeben werden.
% Befehl: makedist (-> doc makedist ) 
% Achtung: Die Standardabweichung ist die Wurzel der Varianz

pd = makedist('Normal','mu',Mittelwert,'sigma',sqrt(Varianz));

%% 2) Erstellt eine for-Schleife und ziehe 10000 mal aus der Verteilung
% Befehl: sample = random(pd)
% Speichert alle samples in einem Vektor

% Zuerst wird ein leerer Vektor erzeugt
samples = [];
% Anschließend wird in einer Schleife in jeder Iteration eine Zufallszahl erzeugt und diese an den samples-Vektor angehängt,
% indem der bisherige samples-Vektor mit der Zufallszahl verbunden wird und als neuer Vektor wieder in der Variable samples
% gespeichert wird
for i =1: 10000
    samples = [samples, random(pd)];
end

% Alternativ kann man den vollständigen samples-Vektor durch ein zusätzliches Argument der random-Funktion erzeugen. Man gibt
% hierbei die Größe des Vektors an. Hier: [1,10000] -> 1 Zeile, 10000 Spalten
% Das ist eigentlich auch die bevorzugte und effizientere Methode.
% samples = random(pd, [1,10000]);

%% 3) Berechnet umgekehrt den Mittelwert und Varianz aus dem sample-Vektor
% Befehle: mean, std oder var

mean_approx = mean(samples);
var_approx = var(samples); % oder var_approx = std(samples)^2;

end

