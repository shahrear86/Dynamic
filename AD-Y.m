%created by: shahrear
%student.eco86@gmail.com
% © Md. Shahrear Zaman
%References: 
%1.     Macro Economics
%       sixth Edition
%       by Rudiger Dornbusch
%       Stanley Fischer
%       Chapter - 3. Income and Spending
%2.     User Manual, Octave 
 
%26.04.2018
clear all
Y = [0:0.1:1000]; %Income,Output
AD1 = Y; %At 45 degree line: Aggregate Demand = Income/Output 
c = 0.60; %Marginal Propensity to Consume 
t = 0.45; %Tax Rate
t1 = 0.89;%Tax Rate
s = 1 - c;%Marginal Propensity to Save
C_BAR=  10;%Fixed Level of The Consumption
I_BAR=  40;%Constant Planned Investment
TR_BAR= 20; %Transfer Payments
G_BAR=  30; %Government Expenditure
G_BAR1= 80; %Government Expenditure

C = C_BAR + c*TR_BAR + c*Y - c*t*Y; %Consumption
S+C= Y;
S= Y-C; %Savings
%Aggregate Demand without Changing Government Expenditure or tax rate
AD = C_BAR + c*TR_BAR + c*(1-t)*Y + I_BAR + G_BAR;
%Aggregate Demand with Changing tax rate
AD2 = C_BAR + c*TR_BAR + c*(1-t1)*Y + I_BAR + G_BAR;
%Aggregate Demand with Changing Government Expenditure
AD3 = C_BAR + c*TR_BAR + c*(1-t)*Y + I_BAR + G_BAR1;
%Initial Income, Output
Y0=(1/(1-c*(1-t)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR)
%Income, Output after changing Government Expenditure
Y1=(1/(1-c*(1-t)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR1)

A0=(1/(1-c*(1-t)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR);
AD00=[0:0.1:A0];
A1=(1/(1-c*(1-t)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR1);
AD11=[0:0.1:A1];

%Initial Income, Output
Y00=(1/(1-c*(1-t)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR)
%Income, Output after changing Government Expenditure
Y11=(1/(1-c*(1-t1)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR)
%Income, Output after changing Tax rate
A00=(1/(1-c*(1-t)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR);
AD0=[0:0.1:A00];
A11=(1/(1-c*(1-t1)))*(C_BAR + c*TR_BAR + I_BAR + G_BAR);
AD12=[0:0.1:A11];




subplot(2,1,1)
plot(Y,AD1,Y,AD,Y,AD3,Y0,AD00,Y1,AD11)
xlabel ("Income(Y),Output");
ylabel ("Aggregate Demand (AD)");
title ("Increase/Decrease of the Government Expenditure");
subplot(2,1,2)

plot(Y,AD1,Y,AD,Y,AD2,Y00,AD0,Y11,AD12)
xlabel ("Income(Y),Output");
ylabel ("Aggregate Demand (AD)");
title ("Increase/Decrease of the Tax Rate");










 

 

  

