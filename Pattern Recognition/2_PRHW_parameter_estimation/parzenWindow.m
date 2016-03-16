clc;

N = 1000;
hn = 20/sqrt(N);
a = 3;
delta=0.1;
window_function = 'gaussian';  %winow function: normal, gaussian, exponential

x = -4:delta:5;

len = size(x,2);
s = zeros(1, len);
xi = zeros(1,N);
for i = 1:N
    xi(i) = 0.1*(rand()-1)+0.9*(randn()+1);
end
epison = 0;
for j = 1:len
    y = 0;
    for i = 1:N
        y = y + phi((x(j)-xi(i))/hn, a, window_function)/hn;
    end
    s(j) = y / N;
    epison = epison + (s(j)-p(x(j)))^2*delta;
end

disp(epison);

hold on;
h1=plot(x,s);
h2=plot(x,p(x),'r');
legend([h1 h2], 'gaussian','p(x)');
hold off;
print(gcf,'-depsc2','-r300','gaussian.eps');