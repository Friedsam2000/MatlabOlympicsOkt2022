function moment = momentenberechnung(kraft, hebelarm)

% Wichtig ist die Reihenfolge: hebelarm x kraft, und nicht kraft x hebelarm
moment = cross(hebelarm, kraft);

end