function I_b = CCRB1(G, n, x)
    % This function calculates the information in bits
    % Inputs:
    % G - vector of G values
    % n - number of measurements
    % x - unknown parameter x
    % Output:
    % I_b - vector of information in bits corresponding to each G value
    
    % Calculate the variance for each G value
    sigma2 = 1 + (2 * G - 2) ./ G .* x.^2;
    
    % Calculate Fisher Information for one measurement for each G value
    I_x = (2 * (2 - 2./G).^2 .* x.^2) ./ (sigma2.^4);
    
    % Calculate Fisher Information for n measurements for each G value
    I_n_x = n .* I_x;
    
    % Calculate the variance bound for each G value
    var_bound = 1 ./ I_n_x;
    
    % Calculate the precision (standard deviation) for each G value
    sigma_x = sqrt(var_bound);
    
    % Calculate the information in bits for each G value 2 for the quanutm
    I_b = 0.5 * log2(1 + 2*(x.^2 ./ sigma_x.^2));
end