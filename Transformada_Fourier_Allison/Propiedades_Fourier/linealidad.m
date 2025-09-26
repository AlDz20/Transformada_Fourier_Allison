% Señales senoidales
t = 0:0.01:1;
x1 = sin(2*pi*5*t);      % Señal 1: 5 Hz
x2 = sin(2*pi*10*t);     % Señal 2: 10 Hz
x_sum = x1 + x2;         % Suma de señales

% FFT
X_sum = fft(x_sum);
n = length(X_sum);
f = (0:n-1)*(1/(t(2)-t(1)))/n;

% Gráfico
figure;
plot(f, abs(X_sum));
title('Espectro de la suma de dos senoidales');
xlabel('Frecuencia (Hz)');
ylabel('|X(f)|');
