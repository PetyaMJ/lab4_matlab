x=[0:0.1:1.6];
f=(exp(-x).*2)./(2.*x+x.^3)
plot(f)
title('name of graphic') %�������� �������
xlabel('some x') %�������� �� �
ylabel('some y') %�������� �� �
legend('some function') %�������
