# Introduction and Motivation
The motivation for this presentation is based upon my own experience from 
CSCI 430 when I took it in the spring of 2019. My group wanted to create an
embedded project using the Raspberry Pi platform. We needed a user interface 
framework and a python framework called Kivy was chosen. The Kivy framework was 
OK, however from what I have seen in industry, Qt is used significantly more. I
have chosen to give a presentation on Qt to teach students a framework that is 
used in industry. 

I have created this repo to contain my presentation materials and code used 
in the demonstration. It is available for all to clone and use in thier 
projects, provided the GPL license is followed. The goal is for students to 
clone the repo, reverse engineer, understand and try things out for themselves.
Even though this presentation leans more into an embededd/IoT project, the 
knowledge on how to create a Qt GUI can be easily transfered to desktop
applicaitons, such is the design of the Qt framework.

# Why User Interfaces Anyway?
A well designed user interface makes interacting with software programs easier,
more appealing and faster. I also belive that a well designed user interface
makes it easier to communinicate information.

# Why Qt specifically then?
- Qt is used by many companies
- Qt supports both Python and C++, 
- Qt is has an open source and commercial closed source lisence buisness model
- The Qt framework is multiplatform. Qt applications can be developed on 
  Windows, Mac, or Linux and deployed on Windows, Mac, Linux, iOS, and Android. 
- Qt supports multiple processor architectures from 32-bit ARM microcontrollers 
  up to x86 Intel and AMD destop PCs.

# Hardware Technology Used
I have chosen the Nvidia Jetson Nano for this demonstration for 3 reasons:
    1. The Jetson Nano, like the Raspberry Pi is ARM64 based and many companies are switch to ARM based systems for embedded applications and even scaling up to high performance computing.
    2. The Jetson Nano is different enough from a Raspberry Pi to give students exposure to other embedded systems, but similar enough that existing knowledge on the Raspberry Pi system can be transfered over. Additionally both systems run a version of linux (Jetson Nano runs Ubuntu and the Raspberry Pi can run Ubuntu or Raspian) and any learned linux knowledge can be transfered over as well.
    3. The Jetson Nano is targeted as an embedded AI, computer vision, and high performance computing platform. 

# Demonstration
I will be demonstrating a "Smart Coffee Machine" as an example project. In the 
past for the CSCI 430 Software Engineering class there have been a few hardware
projects such as "Smart Mirrors" and "Smart Clocks" for which a user interface
was required. 

# Disclaimer
As stated in the section titled "licensing", this software is provided    
without any warranty. This means I am not responsible for permentently bricking  
your computer, getting you fired or causing international thermonuclear war. 
While I have done my best to release a product that is of quality, it falls to 
be YOUR reseponsiblity to vet the code for memory leaks, security issues and 
other bugs I have missed.     

# Licensing
CSU, Chico Qt Presentation Spring 2021 Smart Coffee Machine GUI Example.
An example of how to create a GUI for embedded systems using Qt.

Copyright (C) 2021 Matthew Hardenburgh 
                                                                            
This program is free software: you can redistribute it and/or modify        
it under the terms of the GNU Affero General Public License as published    
by the Free Software Foundation, either version 3 of the License, or        
(at your option) any later version.                                         
                                                                            
This program is distributed in the hope that it will be useful,             
but WITHOUT ANY WARRANTY; without even the implied warranty of              
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               
GNU Affero General Public License for more details.                         
                                                                            
You should have received a copy of the GNU Affero General Public License    
along with this program.  If not, see <https://www.gnu.org/licenses/>.      
                                                                           
# Copyright
Copyright(C) Matthew Hardenburgh 2021. All Rights Reserved.
mdhardenburgh@protonmail.com
