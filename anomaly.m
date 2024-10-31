function [E,v] = anomaly(M,e)
%Anomaly function 
%   Gives both eccentric and true anomaly

k = M; %K will be the previous iteration of E, starting with E0
E = k - ((k - M - (e*sin(k)))/(1-(e*cos(k))));
while E ~= k
    k = E;
    E = k - ((k - M - (e*sin(k)))/(1-(e*cos(k))));    
v = atan(2*(sqrt((1+e)/(1-e))*tan(E/2)));
end

end
