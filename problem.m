xarray = optimvar('xarray',n, m,'LowerBound',0,'UpperBound',1,'Type','integer')
prob = optimproblem('Objective',sum(sum(c_n.*xarray./r)) + sum(c.*(sum(xarray,2)-1)),'ObjectiveSense','max');
% 限制式
rowsum = optimconstr(n);
distance = optimconstr(n*m);
type = optimconstr(n*m);
time = optimconstr(n*m);
for i = 1:n
    for j = 1:m
        for k = 1:n
            if k > i
                if (t(k,2)-1 >= t(i,1) && t(i,1) >= t(k,1)) || (t(k,2) >= t(i,1) && ...
                        t(i,2) >= t(k,1)+1) || (t(i,2)-1 >= t(k,2) && t(k,2) >= t(i,1)+1)
                    time(i,j) = xarray(i,j)+ xarray(k,j) <= 1;
                end
            end
        end
        type(i,j) = xarray(i,j)*k_d(i,1) <= k_s(j,1);
        distance(i,j) = xarray(i,j)*r(i,j) <= R;
    end
    rowsum(i) = sum(xarray(i,:)) <= 1;
end
prob.Constraints.rowsum = rowsum;
prob.Constraints.type = type;
prob.Constraints.time = time;
prob.Constraints.distance = distance;
show(rowsum)
show(type)
show(time)
show(distance)