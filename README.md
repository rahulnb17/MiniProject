# MiniProject

RAILWAY TRAFFIC MANAGEMENT

1. 221CS126, HARSH GUPTA, guptaharshhemant.221cs126@nitk.edu.in, 7046330080
2. 221CS143, RAHUL BHIMAKARI, rahulbhimakari.221cs143@nitkedu.in, 9483849803
3. 221CS163, VIKRANT KUMAR, vikrantkumar.221cs163@nitk.edu.in, 7982506508


ABSTRACT:
A railway traffic controller system takes care of assigning railway platforms for incoming 
and departing trains in a railway station. In this project we plan to automate the task of 
assigning railway platforms to trains depending on their direction of commute and 
availability of platforms. The loco-pilot inputs the direction of travel, the system calculates 
the suitable railway platform (out of four available) and informs the loco-pilot which 
platform to park, or wait until the platforms are available

WORKING:

Input and Output Description:
The input will be a 2-bit integer out of which 1bits represent the
type of the incoming train and the remaining bits represents the direction of incoming train .
Passenger train can come and park. The system will store the information regarding the 
previous train which has come to the station and updates the track availability for the next 
coming train. We are considering two types of trains, that is : passenger train or goods 
train and there are limitations on which passenger train can park that is passenger train
can park only on 1st and 4th platform.
The output will be a 5-bit integer value which tells the loco-pilot to either park the train or 
halt it which is considered an invalid case. If the parking signal is given to the pilot, the 
four bits would represent situation of railway track after train has parked if at all train is 
parked. If the halt signal or the invalid signal is given, after the waiting time, input is
requested again.

The motivation behind a railway traffic management system project include:
Safety Enhancement: Improving the safety of railway operations by implementing advanced control
andmonitoring systems to prevent accidents and incidents.

Efficiency and Reliability: Enhancing the efficiency of railway services by reducing delays, optimizing
schedules, and ensuring reliable transportation for passengers and cargo

DESCRIPTION
The main objective of this mini-project is to develop a railway traffic management system that 
enhances the overall efficiency, safety, and control of railway operations

Key Components and Features:
Train Scheduling: Develop an automated train scheduling system that optimizes the allocation of 
tracks and resources to minimize conflicts and delays. This includes managing both passenger and 
freight train schedules.

Track Occupancy Monitoring: Implement a system to monitor the real-time occupancy of railway 
tracks using sensors and data from trains. This information can help prevent collisions and improve 
scheduling.

Route Optimization: Create algorithms to find the most efficient routes for trains, taking into account 
factors like track availability, train types, and cargo priority. This helps in minimizing congestion and 
delays.

Signal Control: Develop a system to control railway signals and switches, ensuring that they are 
aligned with the scheduled routes of trains. This is crucial for avoiding accidents and maintaining the 
flow of traffic.

Centralized Control Center: Design a centralized control center where railway operators can monitor 
and manage all aspects of traffic, including tracking trains, adjusting schedules, and responding to 
emergencies.

Safety Systems: Implement safety features such as collision detection, automatic braking, and 
emergency response protocols to prevent accidents and protect passengers and cargo.

Data Analytics: Use data analytics to collect and analyze historical and real-time data on train 
performance, track conditions, and other relevant factors. This data can be used for continuous 
improvement and decision-making.

User Interface: Develop a user-friendly interface for railway operators, allowing them to interact with 
the system, make adjustments, and respond to emergencies efficiently

Challenges:
Complexity: Managing railway traffic is highly complex due to the vast network, multiple types of 
trains, and various operational factors.
Safety: Ensuring the safety of passengers, cargo, and railway personnel is of utmost importance.
Integration: Integrating various components and systems is a significant challenge.
Scalability: The system should be scalable to accommodate changes in traffic volume and network 
expansion.

Benefits:
A well-implemented Railway Traffic Management System can lead to numerous benefits, including:
Improved Efficiency: Reduced delays and optimized resource utilization result in more efficient 
railway operations.
Enhanced Safety: Reduced risks of accidents and improved emergency response capabilities.
Cost Savings: Lower operational costs due to improved resource allocation and reduced downtime.
Environmental Impact: Reduced fuel consumption and emissions through better scheduling and 
traffic management.
Customer Satisfaction: Passengers and shippers benefit from more reliable and timely railway 
services

Conclusion:

A mini-project on Railway Traffic Management aims to address the complexities and challenges 
associated with railway operations while improving efficiency, safety, and the overall quality of
service. Such a project can serve as a valuable contribution to the transportation industry and have a 
positive impact on various stakeholders.

LOGISIM:

https://github.com/UVCan-16/RCB/blob/main/proj1.png
https://github.com/UVCan-16/RCB/blob/main/proj2.png
https://github.com/UVCan-16/RCB/blob/main/proj3.png

VERILOG CODE:

module project(T,A,B,C,D,E,F,G,H,V);
    
    input T,A,B,C,D;
    output E,F,G,H,V;
    assign E = (!T && !B && !C)||(!T && !A && D)||(!A && B && C)||(A && !B)||(A && !C)||(A && !D);
    assign F = (B && (!A || !C || !D))||(T && !B);
    assign G = (C && (!A || !B || !D))||(T && B && !C);
    assign H = (D && (!A || !B || !C))||(!T && (B^^C))||(!T && A && !B)||(A && B && C && !D);
    assign V = !A || !D || (T && (!B || !C));
endmodule

`include "project.v"

module tb;
    reg T,A,B,C,D;
    wire E,F,G,H,V;
    project P1 (T,A,B,C,D,E,F,G,H,V);

    initial begin
        $dumpfile("projecttb.vcd");
        $dumpvars(0,tb);
    end
    initial begin
	$display("T|A B C D | E F G H|V");
        $monitor("%b|%b %b %b %b | %b %b %b %b|%b",T,A,B,C,D,E,F,G,H,V);
	T=1'b1;
	A=1'b1;
	B=1'b0;
	C=1'b1;
	D=1'b1;
    end 
endmodule




