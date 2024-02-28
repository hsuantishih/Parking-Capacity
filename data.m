n = 20;
m = 10;
R = 20;
data = readmatrix("./Car_Demand_20.csv");
k_d = data(:,1)
Loc_d = data(:,2:3)
t = data(:,4:5)
c = data(:,6)
c_n = zeros(n,m);

for j = 1:m
    c_n(:,j) = c;
end
c_n
data = readmatrix("./Space_10.csv");
k_s = data(:,1)
Loc_s = data(:,2:3)

r = zeros(n,m);
for i = 1:n
    for j = 1:m
        r(i,j)=((Loc_d(i,1)-Loc_s(j,1))^2+(Loc_d(i,2)-Loc_s(j,2))^2)^0.5;
    end
end