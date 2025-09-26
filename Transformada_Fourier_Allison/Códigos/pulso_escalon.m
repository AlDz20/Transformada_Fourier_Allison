% Función escalón
t = -1:0.01:1;
x_step = double(t >= 0);               % Escalón unitario

% Gráfico en el dominio del tiempo
figure;
plot(t, x_step);
title('Función escalón en el tiempo');
xlabel('Tiempo (s)');
ylabel('Amplitud');

% Transformada de Fourier
X_step = fft(x_step);
n = length(X_step);
f = (0:n-1)*(1/(t(2)-t(1)))/n;

% Magnitud y fase
figure;
subplot(2,1,1);
plot(f, abs(X_step));
title('Magnitud del espectro - Escalón');
xlabel('Frecuencia (Hz)');
ylabel('|X(f)|');

subplot(2,1,2);
plot(f, angle(X_step));
title('Fase del espectro - Escalón');
xlabel('Frecuencia (Hz)');
ylabel('Fase (rad)');
