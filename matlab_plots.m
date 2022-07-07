
clc, clear, close all

%% Cinfigurações iniciais

% cores
blu = [0.0000 0.4470 0.7410];
red = [0.8500 0.3250 0.0980];
yel = [0.9290 0.6940 0.1250];
mag = [0.4940 0.1840 0.5560];
gre = [0.4660 0.6740 0.1880];
cia = [0.3010 0.7450 0.9330];
vin = [0.6350 0.0780 0.1840];

% Legenda
FontAngLeg = 'italic'; %'italic' , 'normal';
FontNameLeg = 'Times New Roman';
FontSizeLeg = 14;

% Título
titConfig = '\fontname{Times New Roman}\fontsize{14}\bf'; % '\fontname{Times New Roman}\fontsize{12}\bf\it';

% Label
xlabConfig = '\fontname{Times New Roman}\fontsize{14}\bf';
ylabConfig = '\fontname{Times New Roman}\fontsize{14}\bf';

% Fontes do gráfico
numgraph = 14;

%% Dados
f = 60;
t = 0:50e-6:2/f;
w = 2*pi*60;
y(1,:) = sin(w*t);
y(2,:) = cos(w*t);

%% Plot
% Para encontrar a posição, gere a figura, posicione da maneira que lhe
% agrada e depois use o comando:
%
%     scrPos = get(gcf, 'position')
%
% Esse vetor dá a posição de sua figura na tela.
% Use o vetor para criar várias figuras com a mesma posição desejada.

scrPos = [402,360,1063,270];
figure('Position', scrPos)
p(1) = plot(t, 0*y(1,:) , 'color', blu, 'linewidth', 1.5); hold on, grid on
p(2) = plot(t, y(1,:)   , 'color', red, 'linewidth', 1.5);
p(3) = plot(t, y(2,:)   , 'color', mag, 'linewidth', 1.5);

% Você pode "pular" uma curva na criação da legenda. 
leg = legend([p(2) p(3)], {'sin', 'cos'}, 'Location', 'NorthEast');
set(leg,'FontSize', FontSizeLeg, 'FontAngle',FontAngLeg, 'FontName', FontNameLeg)

% title([titConfig, 'Meu exemplo de gráfico']);
xlabel([xlabConfig, 'Tempo, s'])
ylabel([ylabConfig, 'Amplitude, adm']);
set(gca,'FontSize',numgraph, 'FontName', 'Times')

%% Salvando em pdf
pastaAtual = pwd;

% Exemplo 1: quadrada
altura  = 6; % default in 'inches'
largura = 6; % default in 'inches'

nomeFIG = 'figura001';
set(gcf, 'PaperPosition', [0 0 largura altura]); % Position plot at left hand corner with width 5 and height 5.
set(gcf, 'PaperSize', [largura altura]);         % Set the paper to have width 5 and height 5.
saveas(gcf, [pastaAtual, '\', nomeFIG], 'pdf')

% Exemplo 2: alongada
altura  = 4; % default in 'inches'
largura = 12; % default in 'inches'

nomeFIG = 'figura002';
set(gcf, 'PaperPosition', [0 0 largura altura]); % Position plot at left hand corner with width 5 and height 5.
set(gcf, 'PaperSize', [largura altura]);         % Set the paper to have width 5 and height 5.
saveas(gcf, [pastaAtual, '\', nomeFIG], 'pdf')










