x=[0:0.1:1.6];
f = (exp(-x).*2)./(2.*x+x.^3)%1 функція
k = sin(f)%2 функція
plot(f);
hold on;
plot(k);
title('both func') %названня графіку
xlabel('Parametr x') %названня осі х
ylabel('Parametr y') %названня осі х
legend('func f','func k') %легенда
hold off;
