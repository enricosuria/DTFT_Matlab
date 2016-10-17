function [X] = dtft(x,N,f)
% [X] = dtft(x,N,f)
%  x --> Discrete-time signal
%  N --> Number of samples (e.g. length(x))
%  f --> Numeric frequency (e.g. linspace(0,1,1000))

for k=1:1:length(f)
    temp=0;
    for n=1:1:N
        temp = temp + x(n)*exp(-1j*2*pi*f(k)*n);
    end
    X(k) = temp;
end

end