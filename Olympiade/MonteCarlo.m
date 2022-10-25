function [mittelwert_approx,varianz_approx] = MonteCarlo(Mittelwert,Varianz)
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

%% 2) Erstellt eine Normalverteilung "pd" % mit dem Mittelwert und der Varianz, die der Funktion übergeben werden.
% Befehl: makedist (-> doc makedist ) 
% Achtung: Die Standardabweichung ist die Wurzel aus der Varianz



%% 3) Erstellt eine for-Schleife und ziehe 10000 mal aus der Verteilung
% Befehl: sample = random(pd)
% Speichert alle samples in einem Vektor



%% 4) Berechnet umgekehrt den Mittelwert und Varianz aus dem sample-Vektor
% Befehle: mean, std/var

mittelwert_approx = []; % überschreiben
varianz_approx = []; % überschreiben
end 

