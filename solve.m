% Convert the problem object to a problem structure.

problem = prob2struct(prob);

% Solve the resulting problem structure.

[sol,fval,exitflag,output] = intlinprog(problem)
sol_n = zeros(n,m);
index = 1;
for i = 1:n
    for j = 1:m
        sol_n(i,j) = sol(index);
        index = index + 1;
    end
end
sol_n