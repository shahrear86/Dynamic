# -*- coding: utf-8 -*-
"""
Created on Mon Apr  9 15:20:11 2018

@author: shahrear
reference book:
1.Economic Dynamics
4th Edition
2010
by 
Giancarlo Gandolfo


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
X, Y = np.meshgrid(np.arange(-20, 20, 1), np.arange(-10, 10, 1))
omega=0.8
beta=1
Xdot=Y
Ydot=-(omega**2)*X-2*beta*Y
plt.figure()
plt.title('Phase Diagram: Linear System')
Q=plt.quiver(X,Y,Xdot,Ydot,units='width')
plt.show()