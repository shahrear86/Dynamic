%created by: shahrear
%student.eco86@gmail.com
%References: 
%1.     Macro Economics
%       sixth Edition
%       by Rudiger Dornbusch
%       Stanley Fischer
%       %Chapter-4(Money,Interest and Income),Chapter-5(Monetary and Fiscal Policy)
%2.     User Manual, Octave 

%28.04.2018
clear all
%The Open Economy IS-LM Model
TR_BAR= 10 %Transfer Payments
I_BAR = 4 %Constant Planned Investment
G_BAR = 2 %Government Expenditure
G_BAR1= 4 %Government Expenditure
X_bar = 8 %Export
R     = 1 %Real Exchange Rate
b     = 0.4 %High b implies a large reduction in private aggregate demand ,b>0
i     = [0:0.1:10]; 
c     = 0.6 %Marginal propensity to consume
m     = 0.001 %Marginal propensity to import 
v     = 0.2 %Coefficient of the real exchange rate
%A_bar = c*TR_BAR + I_BAR + G_BAR%Domestic Autonomous Spending
%A_bar1= c*TR_BAR + I_BAR + G_BAR1 
%The large v is,the more responsive is the trade balace to the
%real exchange rate.  
t     = 0.2           %Tax rate
alfa_g= 1/(1- c*(1-t)) %multiplier in the presence of the Income Taxes
I = I_BAR - b*i;
deltaY = alfa_g*(G_BAR1- G_BAR);%changes of the equilibrium income
*******************************************
M_bar =10 % The nominal money supply
P_bar =5 % Price level 
k     =0.08 % Responsiveness of the demand for money to the Income
%A high value of k implies a large increase 
%in money demand as income rises and hence a large increase 
%in interest rates required to maintain money market equilibrium 
h     =0.8
%IS:
Y1    =(c*TR_BAR + I_BAR - b*i + G_BAR  + X_bar +v*R)/(1-c+m);
Y11   =(c*TR_BAR + I_BAR - b*i + G_BAR1 + X_bar +v*R)/(1-c+m);
%LM:
Y2    =(1/k)*((M_bar/P_bar)+h*i);
*********************************************
plot(Y1,i,'b',Y2,i,'r',Y11,i,'b')
xlabel ("Income(Y),Output");
ylabel ("Interest rate");
title ("Increase of the Government Expenditure in the IS-LM Model");
legend("IS","LM")
