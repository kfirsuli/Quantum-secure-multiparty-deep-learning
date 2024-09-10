% Define the accuracies vector
% Accuracies = [11.48, 12.05, 11.84, 11.44, 11.98, 11.36, 11.42, 11.46, 12.48, 11.77, 11.44, 11.42, 11.53, 12.32, 11.73, 11.98, 11.65, 12.13, 11.7, 12.51, 12.68, 12.38, 12.56, 12.05, 12.02, 13.07, 11.9, 12.16, 12.0, 12.89, 13.1, 12.44, 12.53, 12.51, 12.28, 12.88, 12.72, 12.5, 12.97, 13.27, 12.56, 12.7, 13.73, 12.97, 13.23, 12.55, 13.82, 13.12, 12.29, 13.38, 12.77, 12.82, 13.63, 13.5, 13.27, 13.36, 13.05, 13.16, 12.45, 13.44, 13.84, 13.42, 14.25, 14.14, 14.16, 14.14, 14.41, 13.88, 13.96, 14.67, 14.66, 14.16, 14.5, 13.56, 14.54, 14.39, 14.97, 14.48, 14.8, 14.66, 14.85, 14.5, 14.96, 15.07, 15.36, 14.65, 15.37, 15.03, 15.25, 15.8, 15.09, 15.62, 14.94, 15.37, 16.06, 15.9, 16.61, 16.58, 15.72, 16.4, 16.68, 16.7, 16.41, 17.03, 16.95, 17.57, 17.07, 16.87, 17.11, 18.11, 17.83, 17.28, 17.62, 18.8, 17.89, 18.2, 17.9, 18.23, 18.65, 18.94, 18.99, 18.69, 19.45, 19.51, 19.7, 20.44, 20.17, 20.46, 20.26, 20.26, 20.0, 20.31, 20.89, 20.78, 20.5, 21.28, 21.03, 22.12, 21.47, 21.68, 22.19, 22.52, 22.45, 23.06, 22.77, 23.33, 23.54, 23.16, 23.39, 22.74, 23.54, 24.38, 23.23, 24.77, 24.48, 24.07, 25.29, 25.83, 25.84, 25.81, 25.44, 27.39, 26.63, 27.85, 26.95, 28.41, 27.76, 28.0, 27.95, 28.54, 28.96, 29.38, 28.93, 29.08, 30.16, 30.72, 31.17, 31.08, 32.04, 32.42, 30.44, 31.59, 32.57, 32.82, 33.41, 33.6, 33.63, 34.34, 34.42, 34.62, 35.11, 35.5, 36.09, 36.34, 36.34, 37.32, 37.71, 37.83, 37.16, 39.32, 38.92, 39.5, 39.62, 39.41, 40.62, 41.15, 41.73, 41.95, 42.4, 42.35, 42.92, 43.58, 43.11, 44.25, 44.92, 44.49, 44.67, 46.02, 46.19, 46.59, 46.76, 48.16, 48.73, 48.71, 48.77, 49.22, 49.86, 49.82, 51.3, 51.66, 51.74, 52.66, 53.26, 52.43, 53.46, 52.92, 54.17, 54.96, 55.11, 54.61, 56.38, 55.89, 57.04, 58.03, 58.36, 57.84, 59.32, 59.16, 59.58, 59.78, 60.67, 61.34, 61.67, 60.98, 62.99, 63.64, 63.38, 64.18, 64.35, 65.03, 65.41, 66.05, 66.22, 65.95, 66.72, 67.88, 67.3, 68.41, 69.06, 70.18, 69.04, 70.09, 70.47, 71.35, 71.26, 71.3, 71.94, 72.33, 73.41, 72.86, 74.04, 74.13, 74.56, 74.99, 75.62, 76.5, 75.95, 76.37, 76.71, 77.3, 77.83, 77.25, 78.58, 77.54, 79.53, 79.06, 79.8, 80.04, 79.34, 80.3, 81.37, 81.29, 81.91, 81.71, 82.66, 81.71, 82.78, 83.03, 83.2, 82.98, 84.05, 83.86, 83.97, 85.34, 84.57, 84.88, 85.36, 85.47, 85.77, 86.06, 86.8, 87.17, 86.55, 86.96, 87.33, 87.48, 87.61, 88.06, 88.33, 88.15, 88.29, 88.78, 88.71, 88.86, 89.2, 89.19, 89.68, 89.4, 89.96, 90.1, 90.04, 90.1, 90.69, 90.36, 90.38, 90.71, 91.2, 91.3, 91.16, 91.85, 91.7, 92.04, 92.48, 92.35, 91.65, 92.26, 92.16, 92.74, 92.88, 92.6, 92.56, 92.89, 93.4, 93.43, 93.45, 93.06, 93.45, 93.44, 94.12, 93.97, 93.59, 93.74, 94.13, 94.22, 94.25, 94.33, 94.29, 94.21, 94.36, 94.22, 94.49, 94.84, 94.64, 95.1, 95.14, 95.11, 94.78, 95.29, 95.13, 95.28, 95.39, 95.35, 95.39, 95.57, 95.49, 95.48, 95.65, 95.62, 95.92, 95.7, 95.94, 95.64, 95.73, 96.06, 95.99, 96.1, 95.91, 96.25, 96.06, 96.36, 96.21, 96.12, 96.39, 96.44, 96.3, 96.41, 96.36, 96.36, 96.55, 96.35, 96.69, 96.63, 96.46, 96.41, 96.41, 96.5, 96.78, 96.69, 96.82, 96.66, 97.0, 96.8, 96.9, 96.88, 96.8, 97.05, 97.01, 96.87, 96.97, 96.94, 96.76, 97.09, 96.85, 97.02, 97.15, 97.0, 97.09, 96.99, 96.95, 97.01, 97.03, 97.24, 97.15, 97.23, 97.18, 97.09, 97.38, 97.22, 97.11, 97.36, 97.41, 97.14, 97.27, 97.09, 97.31, 97.55, 97.48, 97.25, 97.46, 97.41, 97.38, 97.29, 97.41, 97.5, 97.68, 97.45, 97.6, 97.48, 97.39, 97.43, 97.48, 97.58, 97.53, 97.59, 97.48, 97.6, 97.55, 97.61, 97.63, 97.53, 97.58, 97.55, 97.44, 97.64, 97.65, 97.6, 97.66, 97.62, 97.86, 97.72, 97.73, 97.66, 97.7, 97.5, 97.77, 97.55, 97.74, 97.69, 97.72, 97.76, 97.63, 97.81];
Accuracies = [9.98, 10.47, 9.83, 10.39, 11.08, 9.98, 10.08, 10.13, 10.0, 9.96, 10.29, 10.8, 10.09, 10.03, 10.24, 10.03, 10.03, 9.94, 10.13, 10.27, 10.33, 9.65, 10.46, 10.4, 10.26, 10.23, 10.7, 10.01, 10.09, 10.4, 11.17, 10.16, 10.0, 10.72, 10.2, 10.1, 9.58, 9.56, 10.19, 10.65, 10.27, 10.88, 10.26, 10.56, 10.41, 10.52, 10.34, 10.83, 10.04, 10.77, 10.42, 10.93, 10.27, 10.68, 10.6, 10.89, 10.77, 9.96, 10.47, 10.44, 10.93, 10.81, 11.04, 10.77, 10.73, 10.48, 10.72, 10.68, 10.13, 10.84, 10.3, 10.47, 10.99, 10.57, 10.94, 10.84, 10.63, 10.94, 11.14, 11.1, 10.94, 10.85, 10.82, 11.45, 11.4, 10.74, 10.66, 10.94, 10.95, 10.87, 11.61, 11.46, 10.96, 11.61, 10.66, 10.49, 10.69, 11.72, 11.84, 11.57, 11.06, 11.68, 11.72, 11.31, 11.55, 11.67, 11.71, 11.72, 11.73, 11.98, 11.89, 11.61, 12.1, 11.51, 12.35, 12.4, 12.16, 12.32, 12.35, 12.28, 12.47, 12.39, 11.96, 12.54, 12.85, 12.88, 12.54, 12.69, 12.93, 12.91, 12.69, 12.78, 12.85, 13.29, 13.27, 13.5, 13.81, 13.54, 13.48, 13.55, 13.83, 14.09, 13.7, 14.28, 13.6, 14.21, 14.43, 14.26, 14.6, 14.57, 14.89, 14.72, 15.51, 15.55, 15.28, 15.39, 15.43, 15.32, 16.15, 15.96, 15.79, 15.77, 16.86, 16.29, 17.26, 16.56, 17.0, 16.81, 18.07, 18.13, 17.8, 17.24, 18.35, 18.52, 19.48, 19.41, 18.92, 20.11, 19.08, 19.94, 20.32, 20.91, 20.35, 21.12, 21.05, 21.56, 22.22, 21.67, 23.14, 22.94, 23.07, 23.78, 23.78, 24.44, 25.19, 25.19, 25.5, 26.32, 26.01, 26.88, 26.16, 26.25, 28.76, 27.89, 29.2, 29.18, 29.36, 30.75, 31.13, 31.05, 31.72, 32.74, 33.36, 32.94, 33.65, 34.38, 34.98, 35.13, 36.1, 35.8, 37.81, 37.82, 38.52, 39.02, 40.29, 40.5, 41.29, 41.51, 43.35, 43.83, 44.41, 44.53, 45.7, 46.08, 46.82, 47.43, 48.36, 48.98, 49.47, 50.84, 51.53, 51.81, 52.76, 53.7, 54.35, 54.64, 55.54, 56.53, 58.23, 58.68, 58.54, 59.93, 61.5, 61.33, 62.24, 62.32, 63.16, 63.71, 64.78, 64.83, 66.44, 67.84, 68.17, 68.61, 68.4, 70.41, 70.41, 71.21, 72.14, 73.1, 73.39, 74.89, 74.48, 75.06, 76.1, 76.21, 77.38, 77.98, 78.16, 79.23, 79.63, 79.85, 80.18, 81.16, 81.94, 81.97, 82.58, 83.34, 83.88, 84.72, 84.84, 84.89, 85.7, 85.89, 86.12, 86.51, 86.49, 87.43, 87.55, 88.03, 88.41, 88.66, 88.71, 89.25, 89.71, 90.07, 90.88, 90.87, 90.7, 91.31, 91.17, 91.52, 91.92, 91.82, 92.83, 91.89, 92.61, 92.8, 92.49, 92.42, 93.25, 93.41, 93.1, 93.93, 93.7, 93.75, 93.97, 94.22, 94.12, 94.12, 94.48, 94.5, 94.73, 94.86, 94.8, 94.91, 95.03, 95.33, 95.31, 95.47, 95.86, 95.85, 95.9, 95.82, 96.02, 95.84, 95.63, 95.97, 96.25, 96.1, 96.36, 96.41, 96.41, 96.57, 96.73, 96.51, 96.6, 96.65, 96.29, 96.55, 96.61, 96.75, 96.86, 96.88, 97.04, 96.96, 96.97, 96.99, 97.03, 96.88, 97.21, 97.14, 97.11, 97.12, 97.21, 97.22, 97.42, 97.23, 97.17, 97.31, 97.19, 97.29, 97.24, 97.42, 97.36, 97.42, 97.38, 97.41, 97.49, 97.49, 97.51, 97.63, 97.66, 97.63, 97.66, 97.69, 97.6, 97.63, 97.58, 97.56, 97.68, 97.38, 97.75, 97.71, 97.57, 97.56, 97.83, 97.72, 97.73, 97.78, 97.73, 97.83, 97.74, 97.76, 97.62, 97.76, 97.7, 97.73, 97.75, 97.88, 97.8, 97.69, 97.74, 97.8, 97.6, 97.78, 97.86, 97.96, 97.87, 97.82, 97.82, 98.05, 97.9, 97.88, 97.86, 97.96, 97.89, 97.83, 97.88, 97.82, 97.98, 97.78, 97.87, 97.87, 98.01, 97.97, 97.83, 98.0, 97.91, 97.92, 97.94, 98.01, 97.93, 98.02, 97.91, 97.91, 98.05, 97.91, 97.97, 98.02, 97.97, 98.01, 97.95, 97.89, 98.01, 98.04, 97.97, 98.01, 97.9, 98.0, 97.86, 98.03, 98.07, 98.06, 97.96, 98.0, 97.91, 98.03, 97.98, 97.98, 98.03, 97.95, 98.08, 97.92, 97.97, 98.02, 98.12, 98.09, 98.0, 97.94, 98.05, 98.01, 98.08, 98.08, 98.03, 97.98, 98.07, 97.9, 98.11, 98.12, 98.07, 97.97, 98.15, 98.08, 97.97, 97.99, 98.1, 98.04, 98.08, 98.1, 98.07, 98.0];
x = logspace(-3, 2, length(Accuracies));
% Define the logistic function
logistic = @(b, x) b(1) ./ (1 + exp(-b(2) * (x - b(3))))+b(4) ;

% Initial parameter estimates
initialParams = [max(Accuracies) - min(Accuracies), 1, 0, min(Accuracies)];

% Fit the logistic function to the data
options = optimset('Display','off');
[params, resnorm] = lsqcurvefit(logistic, initialParams, x, Accuracies, [], [], options);

% Generate fitted values
fitted_values = logistic(params, x);
rmse = sqrt(mean((Accuracies - fitted_values).^2)); % <-- Added line

% Plot the original data and the fitted curve
figure(4);
plot(10*log10(x), Accuracies, 'bo', 'DisplayName', 'Numerical Calculation');
hold on;
plot(10*log10(x), fitted_values, 'r-', 'LineWidth', 2, 'DisplayName', 'Fitted Logistic Curve');
xlabel('Physical scaling parameter F (dB)');
xlabel('Physical scaling parameter $F$ (dB)', 'Interpreter', 'latex', 'FontSize', 14)

ylabel('Classification Accuracy (%)');
legend show;
legend({'Numerical Calculation','Fitted Logistic Curve'},'Location','southeast')
grid on;
set(gca, 'fontsize', 14);
set(gca, 'FontName', 'Times New Roman')

