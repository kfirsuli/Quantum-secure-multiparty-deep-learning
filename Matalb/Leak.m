function [L] = Leak(V, T,epsilon)
a = V; b = T.*(V-1)+1+epsilon; c = sqrt(T.*(V.^2-1));
z = sqrt((a+b).^2-4*c.^2);
v1 = 0.5*(z+b-a); v2 = 0.5*(z-(b-a)); v3 = b-c.^2./(a+1);
% L = G(v3);
L = G(v1)+G(v2)-G(v3);
end
