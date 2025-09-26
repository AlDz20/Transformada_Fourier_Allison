% Señal corta
t_short = 0:0.01:0.5;
x_short = sin(2*pi*5*t_short);

% Señal larga
t_long = 0:0.01:2;
x_long = sin(2*pi*5*t_long);

% FFT
X_short = fft(x_short);
X_long = fft(x_long);

% Gráficos
figure;
subplot(2,1,1);
plot(abs(X_short));
title('Espectro - Señal corta');

subplot(2,1,2);
plot(abs(X_long));
title('Espectro - Señal larga');
