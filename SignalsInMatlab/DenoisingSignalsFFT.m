clear all, close all, clc
%% Create a simple signal with two frequencies
dt = .001;
t=0:dt:1;
fclean=sin(2*pi*50*t) + sin(2*pi*120*t);
f= fclean + 2.5*randn(size(t));

figure; set(gcf, 'POsition', [100 100 900 500])
subplot(3,1,1)
plot(t,f,'c','LineWidth',3), hold on
plot(t, fclean, 'k', 'LineWidth', 2.5)
l1 = legend('noisy','Clean'); set(l1, 'FontSize',32)
ylim([-10 10]); set(gca, 'fontSize', 32)
