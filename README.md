# RAILWAY TRAFFIC MANAGEMENT SYSTEM


## Team Details
<details>
  <summary>Detail</summary>

  > Semester: 3rd Sem B. Tech. CSE

  > Section: S1

  > Member-1: 221CS126, HARSH GUPTA, guptaharshhemant.221cs126@nitk.edu.in, 7046330080

  > member-2: 221CS143, RAHUL BHIMAKARI, rahulbhimakari.221cs143@nitkedu.in, 9483849803

  > Member-3: 221CS163, VIKRANT KUMAR, vikrantkumar.221cs163@nitk.edu.in, 7982506508
</details>

<!-- Second Section -->
## Abstract
<details>
  <summary>Detail</summary>
  
  > A railway traffic controller system takes care of assigning railway platforms for incoming 
and departing trains in a railway station. In this project we plan to automate the task of 
assigning railway platforms to trains depending on their direction of commute and 
availability of platforms. The loco-pilot inputs the direction of travel, the system calculates 
the suitable railway platform (out of four available) and informs the loco-pilot which 
platform to park, or wait until the platforms are available
</details>


<!-- Third Section -->
## Working
<details>
  <summary>Detail</summary>

  > Explain the working of your model with the help of a functional table (compulsory) followed by the flowchart.
> Input and Output Description:
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

</details>

<!-- Fourth Section -->
## Logisim Circuit Diagram
<summary>Detail</summary>

  ![image](https://github.com/rahulnb17/MiniProject/assets/122613909/28237cb8-c392-400b-a26f-55c145e13e21)
  
  ![image](https://github.com/rahulnb17/MiniProject/assets/122613909/2da14b88-a7a9-46bb-b186-859ae0d9a9c6)

![image](https://github.com/rahulnb17/MiniProject/assets/122613909/5a3608c7-a001-41d9-8e93-93491b8ffc0d)


</details>

<!-- Fifth Section -->
## Verilog Code
<details>
  <summary>Detail</summary>
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


  > Neatly update the Verilog code in code style only.
</details>
