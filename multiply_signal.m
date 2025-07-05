clc; close all; clear all;
t=0: .001:2;
x1=sin(40*pi*t);
x2=sin(2*pi*t);
y=x1.*x2;

subplot(3,1,1);
plot(t,x1,'b','LineWidth',3);
subplot(3,1,2);
plot(t,x2,'g','LineWidth',3);
subplot(3,1,3);
plot(t,y,'r','LineWidth',3);