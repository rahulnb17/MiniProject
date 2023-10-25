# MiniProject
ABSTRACT:
A railway traffic controller system takes care of assigning railway platforms for incoming 
and departing trains in a railway station. In this project we plan to automate the task of 
assigning railway platforms to trains depending on their direction of commute and 
availability of platforms. The loco-pilot inputs the direction of travel, the system calculates 
the suitable railway platform (out of four available) and informs the loco-pilot which 
platform to park, or wait until the platforms are available

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

Screenshot 2023-10-26 001145.png

