clear
clc

% Pagrindinis grafas
n = 10; % Viršūnių skaičius
U = [1 2; 1 5; 2 4; 3 7; 3 8; 4 5; 4 7; 4 9; 6 4; 6 8; 6 10; 7 1; 9 10]; % Briaunų masyvas

% Indukuojamo grafo viršūnių aibė
vi = [1 2 3 5 6 8];

tic;

% Indukuoto grafo briaunų suradimas
u = GetInducedGraphEdges(U, vi);

% Tikrinimas ar indukuotas grafas yra jungus
isGraphConnected = IsGraphConnected(u, vi); 

timeSpent = toc;

% Rezultatų išvedimas
if isGraphConnected == false
    disp('Indukuotas grafas yra nejungus');
else
    disp('Indukuotas grafas yra jungus');
end

disp('Skaičiavimų trukmė:');
disp(timeSpent);

% Grafo nubraižymas
G = GetGraph(n, U);
h = plot(G);
HighlightGraph(h, vi, u);