M = 0:pi;
e = 0.5;
[E,v] = anomaly(M,e);

hold on
title('For e=0.5')
xlabel('Eccentric/True Anomaly')
ylabel('Mean Anomaly')
plot(E,M,'-ob')
plot(v,M,'-or')
legend('Eccentric Anomaly','True Anomaly','Location','southeast')