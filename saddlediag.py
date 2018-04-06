# -*- coding: utf-8 -*-
"""
Created on Fri Apr  6 13:49:49 2018

@author: shahrear
student.eco86@gmail.com
reference books:
1.Economic Dynamics
Phase Diagrams and Their Economic Application
Second Edition
2002
by 
RONALD SHONE
University of Stirling

Chapter-4: Systems of first-order differential equations
Page-171
Example 4.13

2.User's Guide
NumPy User Guide
Release 1.11.0
Written by the NumPy community
May 29, 2016

3.User's Guide
Matplotlib
Release 2.1.0
by John Hunter, Darren Dale, Eric Firing, Michael Droettboom and the m
October 07, 2017

"""
import numpy as np
import matplotlib.pyplot as plt
X, Y = np.meshgrid(np.arange(-10, 10, 1), np.arange(-10, 10, 1))
Xdot=X+Y
Ydot=4*X+Y
plt.figure()
plt.title('Phase Diagram:Saddle Path')
Q=plt.quiver(X,Y,Xdot,Ydot,units='width')
plt.show()




