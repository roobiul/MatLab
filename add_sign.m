clc; close all; clear all;
t=0: .01:2;
x1=sin(2*pi*t);
x2=cos(4*pi*t);
y=x1+x2;

subplot(1,3,1);
plot(t,x1,'b','LineWidth',3);
subplot(1,3,2);
plot(t,x2,'g','LineWidth',3);
subplot(1,3,3);
plot(t,y,'r','LineWidth',3);