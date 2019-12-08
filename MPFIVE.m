formula=input('Enter Formula in terms of n: ','s');
for n=0:1:199
    ninline=inline(formula,'n');
    xofn(n+1)=feval(ninline,n);
end
for n=0:1:199
    if n==0
        yofn(n+1)=(-1.5*xofn(n+1))+(2*xofn(n+2))-(0.5*xofn(n+3));
    elseif (n>0) && (n<=198)
        yofn(n+1)=(0.5*xofn(n+2))-(0.5*xofn(n));
    else
        yofn(n+1)=(1.5*xofn(n+1))-(2*xofn(n))+(0.5*xofn(n-1));
    end
end

n=1:200;
plot(n,xofn)
hold on
plot(n,yofn,'r')
legend('x(n)','y(n)')
