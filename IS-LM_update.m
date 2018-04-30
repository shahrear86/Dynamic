%created by: shahrear
%student.eco86@gmail.com
%References: 
%1.     Macro Economics
%       sixth Edition
%       by Rudiger Dornbusch
%       Stanley Fischer
%       %Chapter-4(Money,Interest and Income),Chapter-5(Monetary and Fiscal Policy)
%2.     User Manual, Octave 

%29.04.2018
clear all
%The Open Economy IS-LM Model
TR_BAR= 10  %Transfer Payments                                                    10;10;10;10  %Check the combinations
I_BAR = 5   %Constant Planned Investment                                          5;1;5;1
G_BAR = 2   %Government Expenditure                                               2;2;2;2
G_BAR1= 6   %Government Expenditure                                               9;9;6;3
X_bar = 8   %Export                                                               1;1;8;1
%R     = 1   %Real Exchange Rate
p     = 1   %Price level in home country                                          1
pf    = 1   %Price level in foreign country                                       20
e     = 1 %Dollar price of foreign exchange                                       1/30
b     = 0.9 %High b implies a large reduction in private aggregate demand ,b>0  0.9;0.9;0.9;0.9; 0.9;  0.9; 0.4
i     = [0:0.1:10]; 
c     = 0.8 %Marginal propensity to consume                                     0.8;0.67;0.67;0.67;0.67;0.57; 0.6
m     = 0.1 %Marginal propensity to import                                      0.1;0.9;0.9;0.5;0.1;0.2; 0.001; 0.001
s     = 1 - c %Marginal propensity to save 
v     = 0.2 %Coefficient of the real exchange rate
R     = (e*pf)/p
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
%equilbrium level of the Income
%Y_eq=alfa_g*(c*TR_BAR + I_BAR + G_BAR - b*(1/h)*(k*Y-(M_bar/P_bar)))     % equilibrium level of the Income without changing the government expenditure
%Y_eq_new=alfa_g*(c*TR_BAR + I_BAR + G_BAR1 - b*(1/h)*(k*Y-(M_bar/P_bar)))% equilibrium level of the Income by changing the government expenditure

*********************************************
%eqilibrium real exchange rate:
%R_eq = ((s+m)/k*v)*(M_bar/P_bar)) + [(s+m)*h+k*b]*i/k*v;
%A fiscal expansion or a rise to M_bar leads to real appriciation, while a monetary expansion leads to real depriciation
*********************************************
L1=k*Y1 - h*i;%h > 0
L2=k*Y11- h*i; 
*********************************************
subplot(3,1,1)
plot(Y1,i,'b',Y2,i,'r',Y11,i,'b')
xlabel ("Income(Y),Output");
ylabel ("Interest rate");
title ("Increase of the Government Expenditure in the IS-LM Model");
legend("IS","LM")

*********************************************
subplot(3,1,2)
plot(L1,i,'b',L2,i,'r')
xlabel ("Money Demand");
ylabel ("Interest rate");
title ("The Demand For Real Balances As a Function Of The Interest Rate And Real Income ");
legend("L1","L2");

*********************************************
subplot(3,1,3)
plot(Y1,'b',Y11,'r',P_bar,'r')
xlabel ("Output,Spending");
ylabel ("Price Level");
title ("The effect of a Fiscal Expansion on the AD Schedule");
legend("AD","AD'")
