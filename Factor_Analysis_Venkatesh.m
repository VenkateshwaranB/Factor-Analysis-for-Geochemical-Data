%Factor Analysis
% By Venkateshwaran B
%load the data
%X = csvread("orissa org.csv", 1); %if the heading present
X = xlsread("Gm data (1).xlsx", 1); %if the heading is present

%Covarience matrix
S = cov(X);
% Eigenvalues and Eigenvectors
[V D] = eig(S);

%Separate the eigenvalues and eigenvectors
V1 = V;
D1 = D;

%Correlation matrix
K = corr(X);

%Eigenvalues and Eigenvectors
[V D] = eig(K);
V = V';
D = D';

%Scree plot
E1 = diag(D)
plot(E1);

% find the number of factors
E2 = zeros(size(E1));
for i=1:length(E1)
    if E1(i) > 1
        E2(i) = E1(i);
        k = i;
    else
        E2 = E2(1:k);
    end
end
E2 = E2';

%Calculate the factors
p = length(E2);

%Convert an Eigenvalue for unsquared
Dr = sqrtm(D);

%Factor loadings matrix
A = V * Dr;

%Factors Loadings
% sum of the squares of factor loadings should equal to the eigenvalues
% Communalities
Com = A(:, 1).^2;

%Unique variience
U = 1 - Com;

% Reproduced covarience matrix
R = A * A';

% Residual covarience matrix
R_res = K - R;

%Rotated factor matrix
A = A(:, 1:4);

%rotated factor matrix
B = rotatefactors(A, "Method", "varimax");
