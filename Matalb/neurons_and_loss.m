
fig = figure(3);

% First subplot
subplot(2,1,2)
n = logspace(2,4,100);
G = 2;
epsilon = (2 * G - 2) ./ G  ./(n/2);
w_leak = Leak(8+1,1,epsilon);
d_leak = CCRB1(G, n/2, 1./sqrt(n/2));

% Plot the leakage data
loglog(n, w_leak, 'LineWidth', 2);
hold on;
loglog(n, d_leak, 'LineWidth', 2);

% Set the x and y labels
xlabel('Neurons per Layer');
ylabel('Information Leakage (bits)');
grid on;

% Add label 'a)' using normalized coordinates
annotation('textbox', [0.14, 0.82, 0.1, 0.1], 'String', 'a)', 'FontSize', 14, 'EdgeColor', 'none');

% Add the legend and set it to not auto-update
Le = legend('Weights $\mathit{I_{w_i}}$', 'Data $\mathit{I_{x_i}}$', 'Interpreter', 'latex', 'Location', 'northeast');
set(Le, 'AutoUpdate', 'off');
set(gca, 'fontsize', 14);

% Add xline without updating the legend
x1 = xline(784, '--', {'This work'});
x1.LabelVerticalAlignment = 'bottom';
x1.LabelHorizontalAlignment = 'left';
set(gca, 'FontName', 'Times New Roman')

hold off;

% Second subplot
subplot(2,1,1)
n = 748;
T = sqrt(logspace(-1, 0, 100));
V = 1 ./ T.^2;
G = 1.2;
epsilon = (2 * G - 2) ./ G  /(n/2);
w_leak = Leak(4*V + 1, T, epsilon);
d_leak = CCRB1(G, n/2, 1./sqrt(n/2));
plot(-10*log10(T.^2), w_leak, 'LineWidth', 2)
hold on
plot(-10*log10(T.^2), d_leak*ones(1,length(T)), 'LineWidth', 2)

% Set the x and y labels
ylabel('Information Leakage (bits)')
xlabel('Channel Loss (dB)', 'FontSize', 14)
grid on
xlim([0 8])

% Add label 'b)' using normalized coordinates
annotation('textbox', [0.14, 0.06, 0.1, 0.1], 'String', 'b)', 'FontSize', 14, 'EdgeColor', 'none');

% Add the legend and set it to not auto-update
Le = legend('Weights $\mathit{I_{w_i}}$', 'Data $\mathit{I_{x_i}}$', 'Interpreter', 'latex', 'Location', 'west');
set(Le, 'AutoUpdate', 'off');
set(gca, 'fontsize', 14);

% Add xline without updating the legend
x1 = xline(3, '--', {'Local-area network'});
x1.LabelVerticalAlignment = 'top';
x1.LabelHorizontalAlignment = 'right';

x1 = xline(6, '--', {'Metropolitan-area network'});
x1.LabelVerticalAlignment = 'bottom';
x1.LabelHorizontalAlignment = 'right';
set(gca, 'FontName', 'Times New Roman')

hold off;

