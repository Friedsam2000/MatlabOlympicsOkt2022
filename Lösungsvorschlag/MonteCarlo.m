function [mean_approx,var_approx] = MonteCarlo(Mittelwert,Varianz)
%% 1) Statistics and Machine Learining Toolbox installieren
% Um diese Übung durchzuführen, brauchst du die Statistics and Machine 
% Learning Toolbox. Die Toolbox ist eine Sammlung von Funktionen, die auf 
% der technischen Berechnungsumgebung MATLAB® aufbauen. Mit deiner TUM-Lizenz 
% kannst du sie alle kostenlos installieren.

% Schritte zur Installation: 
% a) Speicher alle deine MATLAB-Dateien (du musst MATLAB später neu starten)
% b) Gehe auf 'Home', im Bereich 'Environment' findest du die Schaltfläche 
%    'Add-Ons'. Wenn du darauf klickst, erscheint eine neue Registerkarte 
%    mit allen zusätzlichen MATLAB-Produkten, die du installieren kannst.
% c) Suche in der oberen rechten Ecke nach Statistics and Machine Learning 
%    Toolbox.
% d) Wenn du zur Toolbox-Seite gelangst, klicke auf Install und folge den 
%    Anweisungen.
% e) MATLAB wird neu gestartet! Vergiss nicht, den Ordner mit den Dateien, 
%    die du verwendest, erneut zum Path hinzuzufügen (Rechtsklick -> 
%    Add to Path -> Select Folders and Subfolders)


%% 2) Erstellt eine normalverteilte Wahrscheinlichkeitsverteilung "pd"
% mit dem Mittelwert und der Varianz, die der Funtkion übergeben werden.
% Befehl: makedist (-> doc makedist ) 
% Achtung: Die Standardabweichung ist die Wurzel der Varianz

pd = makedist('Normal','mu',Mittelwert,'sigma',sqrt(Varianz));

%% 3) Erstellt eine for-Schleife und ziehe 10000 mal aus der Verteilung
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

%% 4) Berechnet umgekehrt den Mittelwert und Varianz aus dem sample-Vektor
% Befehle: mean, std oder var

mean_approx = mean(samples);
var_approx = var(samples); % oder var_approx = std(samples)^2;

end

