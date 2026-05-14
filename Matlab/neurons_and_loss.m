
fig = figure(3);

tiledlayout(3,1, 'TileSpacing', 'compact', 'Padding', 'compact');

% First subplot
nexttile(2);
% Your plotting commands for the second subplot

% Second subplot
nexttile(1);
% Your plotting commands for the first subplot

% Third subplot
nexttile(3);

% First subplot
subplot(3,1,2)
n = logspace(2,4,100);
G = 1.3;
epsilon = (2 * G - 2) ./ G  ./(n/2);
w_leak = 0.5*Leak(12+1,1,epsilon); %0.5 acount for the real or complex
% d_leak = CCRB1(G, n/2, 1./sqrt(n/2));
g = 2-2./G;
d_leak = (n+10)./n.*((n/2).*log2(1+2*g./n)-log2(1+g));
d_leak = ((n/2).*log2(1+g./(n/2))-log2(1+g));
g = 2-2./G;
c = g.^2./(1+g);
M=784;
d_leak = 0.5*log2(1+4*(M./n).*(G-1).^2./(G.*(3*G-2))); % 0.25 counts for real and image in addition to the 0.5


% Plot the leakage data
loglog(n, w_leak, 'LineWidth', 2);
hold on;
loglog(n, d_leak, 'LineWidth', 2);

% Set the x and y labels
xlabel('Dimension Size');
ylabel('Information Leakage (bits)');
grid on;

% Add label 'a)' using normalized coordinates
annotation('textbox', [0.14, 0.89, 0.1, 0.1], 'String', 'a)', 'FontSize', 14, 'EdgeColor', 'none');

% Add the legend and set it to not auto-update
Le = legend('Weights $\mathcal{I}_{w}$', 'Data $\mathcal{I}_{x}$', 'Interpreter', 'latex', 'Location', 'northeast');
set(Le, 'AutoUpdate', 'off');
set(gca, 'fontsize', 14);

% Add xline without updating the legend
x1 = xline(784, '--', {'This work'});
x1.LabelVerticalAlignment = 'bottom';
x1.LabelHorizontalAlignment = 'left';
set(gca, 'FontName', 'Times New Roman')

hold off;

% Second subplot
subplot(3,1,1)
n = 748;
T = sqrt(logspace(-1, 0, 100));
V = 1 ./ T.^2;
G = 1.3;
epsilon = (2 * G - 2) ./ G  /(n/2);
w_leak = Leak(4*V + 1, T, epsilon);
w_leak = 0.5*Leak(12*V + 1, T, epsilon); %0.5 acount for real or image
% d_leak = CCRB1(G, n/2, 1./sqrt(n/2));
d_leak = ((n/2).*log2(1+g./(n/2))-log2(1+g));
g = 2-2./G;
c = g.^2./(1+g);
M=784;
d_leak = 0.5*log2(1+4*(M./n).*(G-1).^2./(G.*(3*G-2))); % 0.25 counts for real and image in addition to the 0.5
plot(-10*log10(T.^2), w_leak, 'LineWidth', 2)
hold on
plot(-10*log10(T.^2), d_leak*ones(1,length(T)), 'LineWidth', 2)

% Set the x and y labels
ylabel('Information Leakage (bits)')
xlabel('Channel Loss (dB)', 'FontSize', 14)
grid on
xlim([0 8])

% Add label 'b)' using normalized coordinates
annotation('textbox', [0.14, 0.20, 0.1, 0.1], 'String', 'c)', 'FontSize', 14, 'EdgeColor', 'none');

% Add the legend and set it to not auto-update
Le = legend('Weights $\mathcal{I}_{w}$', 'Data $\mathcal{I}_{x}$', 'Interpreter', 'latex', 'Location', 'west');
set(Le, 'AutoUpdate', 'off');
set(gca, 'fontsize', 14);

% Add xline without updating the legend
x1 = xline(3, '--', {'  Local-area network'});
x1.LabelVerticalAlignment = 'bottom';
x1.LabelHorizontalAlignment = 'right';

x1 = xline(6, '--', {'  Metropolitan-area network'});
x1.LabelVerticalAlignment = 'bottom';
x1.LabelHorizontalAlignment = 'right';
set(gca, 'FontName', 'Times New Roman')

hold off;


% --- Parameters and grids --------------------------------
n = 748;
T = sqrt(logspace(-0.3, 0, 1000));  % T from ~0.316 to 1
V = 1 ./ T.^2;
G = 1.3;
epsilon = (2*G - 2)/G / (n/2);

noise = linspace(0, 0.2, 1000);    % noise from 10^0 to 10^1
leakage_matrix = zeros(numel(noise), numel(T));

% --- Fill the leakage_matrix ------------------------------
for i = 1:numel(noise)
    % Each row corresponds to a specific 'noise' value
    leakage_matrix(i, :) = Leak( 4*(V*(1 + noise(i))) + 1, T, epsilon + noise(i) );
        leakage_matrix(i, :) = Leak( 12*(V*(1 + noise(i))) + 1, T, epsilon + noise(i) );

end

% --- Convert T to dB scale: -10*log10(T.^2) = -20*log10(T) --
T_dB = -20*log10(T);

% --- Plot with imagesc ------------------------------------
subplot(3,1,3)

imagesc('XData', T_dB, ...           % horizontal axis
        'YData', noise, ...          % vertical axis
        'CData', 0.5*leakage_matrix);    % color-coded values
set(gca, 'YDir', 'normal', 'YScale', 'linear');  % Flip Y, log-scale
% annotation('textbox', [0.14, 0.36, 0.1, 0.1], 'String', 'b)', 'FontSize', 14, 'EdgeColor', 'none');
annotation('textbox', [0.14, 0.34, 0.1, 0.1], 'String', 'b)', 'FontSize', 14, 'EdgeColor', 'none');

x1 = yline(0.02, '--', {'Realistic noise'});

xlabel('Channel Loss (dB)', 'FontSize', 14);
ylabel('Technical Noise (SNU)', 'FontSize', 14);
xlim([0 3])
ylim([0 0.2])
cb = colorbar;
ylabel(cb,'$\textrm{Weights Leakage } \mathcal{I}_{w}$ (bits)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName', 'Cambria Math')

% ylabel(cb, 'Weights Leakage (bits)', 'FontSize', 14);
set(gca, 'FontName', 'Times New Roman')
set(gca, 'FontSize', 14);
box on

fig = figure(3);

% Define new height
height = 0.25; % Increase height of each subplot

% First subplot (Middle)
ax1 = subplot(3,1,2);
set(ax1, 'Position', [0.13, 0.40, 0.775, height]); % Make taller

% Second subplot (Top)
ax2 = subplot(3,1,1);
set(ax2, 'Position', [0.13, 0.74, 0.775, height]); % Shifted up

% Third subplot (Bottom)
ax3 = subplot(3,1,3);
set(ax3, 'Position', [0.13, 0.06, 0.68, height]); % Lowered slightly
