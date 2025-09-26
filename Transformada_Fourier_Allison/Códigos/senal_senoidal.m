% Señal senoidal
t = 0:0.01:1;
f0 = 5;                                % Frecuencia de 5 Hz
x_sin = sin(2*pi*f0*t);

% Gráfico en el dominio del tiempo
figure;
plot(t, x_sin);
title('Señal senoidal en el tiempo');
xlabel('Tiempo (s)');
ylabel('Amplitud');

% Transformada de Fourier
X_sin = fft(x_sin);
n = length(X_sin);
f = (0:n-1)*(1/(t(2)-t(1)))/n;

% Magnitud y fase
figure;
subplot(2,1,1);
plot(f, abs(X_sin));
title('Magnitud del espectro - Señal senoidal');
xlabel('Frecuencia (Hz)');
ylabel('|X(f)|');

subplot(2,1,2);
plot(f, angle(X_sin));
title('Fase del espectro - Señal senoidal');
xlabel('Frecuencia (Hz)');
ylabel('Fase (rad)');
