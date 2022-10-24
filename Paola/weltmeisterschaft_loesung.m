function weltmeister = weltmeisterschaft()
    % Dieses Skript wurde auf der Basis des offiziellen Spielplans erstellt: 
    % https://digitalhub.fifa.com/m/464f16f856f5ed05/original/FIFA-World-Cup-Qatar-2022-Match-Schedule.pdf
    
    
    % Definition der "cell arrays" mit den Namen der Nationalmannschaften der einzelnen Gruppen
    groupA = {'Katar','Ecuador','Senegal','Niederlande'};
    groupB = {'England','Iran','USA','Wales'};
    groupC = {'Argentinien','Saudi Arabien','Mexiko','Polen'};
    groupD = {'Frankreich','Australien','Dänemark','Tunesien'};
    groupE = {'Spanien','Costa Rica','Deutschland','Japan'};
    groupF = {'Belgien','Kanada','Marokko','Kroatien'};
    groupG = {'Brasilien','Serbien','Schweiz','Kamerun'};
    groupH = {'Portugal','Ghana','Uruguay','Südkorea'};
    
    %%%%%%%%%%%%%%%%%%%%%%%%% 
    % TODO
    % MATLAB soll aus jeder Gruppe zufällig 2 Nationalmannschaften auswählen 
    % und sie in der Variable "roundof16" speichern.
    % Achte auf die Größe und das Format dieser Variable! 
    % Der Rest des Codes wird euch helfen, die Übung richtig auszuführen.
    % Tipp: Suche bei Google nach der Bedeutung der Funktion randperm
     
    roundof16 = cell(8,2);
    roundof16(1,:) = groupA(randperm(4,2));
    roundof16(2,:) = groupB(randperm(4,2));
    roundof16(3,:) = groupC(randperm(4,2));
    roundof16(4,:) = groupD(randperm(4,2));
    roundof16(5,:) = groupE(randperm(4,2));
    roundof16(6,:) = groupF(randperm(4,2));
    roundof16(7,:) = groupG(randperm(4,2));
    roundof16(8,:) = groupH(randperm(4,2));
    
    %%%%%%%%%%%%%%%%%%%%%%%%
    
    % Erstellung einer Variable mit den beiden Teams, die an jedem Spiel 
    % der Achtelfinale teilnehmen
    match49 =[roundof16(1,1),roundof16(2,2)];
    match50 =[roundof16(3,1),roundof16(4,2)];
    match51 =[roundof16(2,1),roundof16(1,2)];
    match52 =[roundof16(4,1),roundof16(3,2)];
    match53 =[roundof16(5,1),roundof16(6,2)];
    match54 =[roundof16(7,1),roundof16(8,2)];
    match55 =[roundof16(6,1),roundof16(5,2)];
    match56 =[roundof16(8,1),roundof16(7,2)];
    
    % Erstellung eines "Cell Arrays" mit den siegreichen Nationalmannschaften 
    % jedes Spiels der Achtelfinale (jedes Spiel hat einen zufälligen Sieger)
    quarterfinals = cell(8,1);
    quarterfinals(1,:) = match49(randperm(2,1));
    quarterfinals(2,:) = match50(randperm(2,1));
    quarterfinals(3,:) = match51(randperm(2,1));
    quarterfinals(4,:) = match52(randperm(2,1));
    quarterfinals(5,:) = match53(randperm(2,1));
    quarterfinals(6,:) = match54(randperm(2,1));
    quarterfinals(7,:) = match55(randperm(2,1));
    quarterfinals(8,:) = match56(randperm(2,1));
    
    % Erstellung einer Variable mit den beiden Teams, die an jedem Spiel 
    % der Viertelfinale teilnehmen
    match57 = [quarterfinals(1),quarterfinals(2)];
    match58 = [quarterfinals(5),quarterfinals(6)];
    match59 = [quarterfinals(3),quarterfinals(4)];
    match60 = [quarterfinals(7),quarterfinals(8)];
    
    % Erstellung eines "Cell Arrays" mit den siegreichen Nationalmannschaften 
    % jedes Spiels der Viertelfinale (jedes Spiel hat einen zufälligen Sieger)
    semifinals = cell(4,1);
    semifinals(1,:) = match57(randperm(2,1));
    semifinals(2,:) = match58(randperm(2,1));
    semifinals(3,:) = match59(randperm(2,1));
    semifinals(4,:) = match60(randperm(2,1));
    
    % Erstellung einer Variable mit den beiden Teams, die an jedem Spiel 
    % der Halbfinale teilnehmen
    match61 = [semifinals(1),semifinals(2)];
    match62 = [semifinals(3),semifinals(4)];
    
    % Erstellung eines "Cell Arrays" mit den siegreichen Nationalmannschaften 
    % jedes Spiels der Halbfinale (jedes Spiel hat einen zufälligen Sieger)
    finals = cell(2,1);
    finals(1,:) = match61(randperm(2,1));
    finals(2,:) = match62(randperm(2,1));
    
    %Definition des Weltmeisters      
    weltmeister = finals(randperm(2,1));
      
end