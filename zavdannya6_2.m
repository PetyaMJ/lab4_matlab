x=[0:0.1:1.6];
f=(exp(-x).*2)./(2.*x+x.^3)
plot(f)
title('name of graphic') %названня графіку
xlabel('some x') %названня осі х
ylabel('some y') %названня осі х
legend('some function') %легенда
