% Pulso rectangular
t = -1:0.01:1;                         % Tiempo de -1 a 1 segundos
x_rect = double(abs(t) <= 0.5);        % Pulso de duración 1 segundo

% Gráfico en el dominio del tiempo
figure;
plot(t, x_rect);
title('Pulso rectangular en el tiempo');
xlabel('Tiempo (s)');
ylabel('Amplitud');

% Transformada de Fourier
X_rect = fft(x_rect);
n = length(X_rect);
f = (0:n-1)*(1/(t(2)-t(1)))/n;

% Magnitud y fase
figure;
subplot(2,1,1);
plot(f, abs(X_rect));
title('Magnitud del espectro - Pulso rectangular');
xlabel('Frecuencia (Hz)');
ylabel('|X(f)|');

subplot(2,1,2);
plot(f, angle(X_rect));
title('Fase del espectro - Pulso rectangular');
xlabel('Frecuencia (Hz)');
ylabel('Fase (rad)');
