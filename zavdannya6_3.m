x=[0:0.1:1.6];
f = (exp(-x).*2)./(2.*x+x.^3)%1 �������
k = sin(f)%2 �������
plot(f);
hold on;
plot(k);
title('both func') %�������� �������
xlabel('Parametr x') %�������� �� �
ylabel('Parametr y') %�������� �� �
legend('func f','func k') %�������
hold off;
