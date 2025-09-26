% Señal original
x = sin(2*pi*5*t);

% Señal desplazada
x_shifted = sin(2*pi*5*(t - 0.2));  % Desplazada 0.2 segundos

% FFT
X = fft(x);
X_shifted = fft(x_shifted);

% Fase
figure;
subplot(2,1,1);
plot(angle(X));
title('Fase original');

subplot(2,1,2);
plot(angle(X_shifted));
title('Fase con desplazamiento');
