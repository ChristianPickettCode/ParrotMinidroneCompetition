%% Fly a Parrot Minidrone and Detect Objects
% This example shows how to create a Simulink(R) model that starts the flight of a Parrot(R) minidrone and detects a blue-colored object on the ground using the drone's downward-facing camera.
%
%% Introduction
% The Parrot minidrones are equipped with a downward-facing camera that provides 
% images of the surface below it. These images can be processed to detect
% objects.
%
% In this example, you will learn how to use the model to:
% 
% * Obtain an image from the downward-facing camera while the drone is
% airborne
% * Perform analysis of the image to detect any blue colored objects
% * Hover the drone over the detected blue object
%

% Copyright 2021 The MathWorks, Inc.

%% Prerequisites
% * If you are new to Simulink, complete the  
% <http://in.mathworks.com/help/simulink/gs/create-a-simple-model.html Create a Simple Model>.
%
% * To setup and run Simulink model on a Parrot 
% minidrone, follow the example described in
% <docid:parrot_ref.mw_0bc6e038-5752-4e51-ad83-a7b3f40dbff8 Getting Started with Simulink Support Package for PARROT Minidrones>.
%
% * See the 
% <docid:parrot_ref.mw_18dec264-f1a1-40dd-96ff-1ce6fd71ab75 Getting Started with Image Processing Algorithms for PARROT Minidrones> example.
%% Required Hardware
%
% To run this example, you must have the following hardware:
% 
% * Parrot Rolling Spider Or Parrot Mambo minidrone with a fully charged battery and
% propellers connected to the motors
% * Micro USB type-B cable
% * Bluetooth Low energy (BLE) 4.0 support on the host computer
% 
%% Model
% The support package includes an example project that starts the flight of the Parrot minidrone. This example project takes the drone off the ground and 
% moves the drone to the right until it sees a blue color on the ground. When the drone sees blue color, it hovers over it.
%
%
%% Task 1: Simulate the Drone in 3D Simulator Window
%
% 1. Open the <matlab:openExample('parrot/ColorDetectionLandingOfParrotMinidroneExample','supportingFile','parrotMinidroneCompetition') parrotMinidroneCompetition> project.
%
% 2. Once the Simulink project is open, click the *Project Shortcuts* tab
% and click the type of drone you are using. For example, if you are using
% Parrot Mambo, click *Set Mambo Model*.
% 
% 3. To simulate the model, click the *Run* button on the Simulink model toolbar. The lower-left corner of the model window displays status while Simulink prepares to run the model on the host computer.
%
% Observe that the drone in the *Minidrone Flight Visualization* 3D Simulator takes off and starts flying to the right direction until the camera on the drone detects a blue color object. 
% On detecting a blue color object, the drone stops moving and hovers above the blue object.
%
% *Note:* The command |parrotMinidroneCompetitionStart| starts a new
% project everytime you run the command. The modifications (if
% any) that you made in the previous project will not appear in the new
% project.
%% Task 2: Set Environment to Fly Drone
%
% 1. Place a blue colored object on the ground.
%
% 2. Place the drone to the left of the blue colored object in such a way that the
% object is on the y-axis of the drone.
%
% 3. Connect the Parrot Minidrone to your computer using Bluetooth as
% described in *Setup and Configuration*.
%
%% Task 3: Deploy the Model on Parrot Minidrone
% 
% 1. In the model, right-click the *Flight Control System* and select *Open As Top Model*.
% The *flightControlSystem* model opens in a separate window. 
%
% 2. In the model toolbar, click the *Deploy to Hardware* button. The
% lower-left corner of the model window displays status while Simulink
% prepares, downloads, and runs the model on the hardware.
%
% After successfully deploying the model, the Parrot minidrone takes off from the
% ground and starts moving to the right direction until the drone detects
% the blue colored object. On detecting the object, the drone stops moving and
% starts hovering over the object.
%
%% Task 4: Modify the Track in 3D Simulator Window using Competition Track Builder
% You can use the Competition Track Builder app to create new tracks and to modify existing
% tracks. This app also allows you to test line-following algorithms and
% other similar algorithms in the Simulink 3D environment. For more
% information on using Competition Track Builder app, see
% <docid:parrot_ug#mw_9caec272-897b-4756-be59-83e1c0b52622 Competition Track Builder>.
% 
% 1. In the Simulink project, click the
% *Project Shortcuts* tab and then click *Open Track  Builder*.
%
% 2. In the Competition Track Builder app, make the changes as required. For example,
% create a custom track by clicking on the white area and update the changes to 3D Simulator window. A sample GIF image is shown below.
%
% <<../parrot_track_builder.gif>>
%
%
%% See Also
% 
% <docid:parrot_ug#mw_9caec272-897b-4756-be59-83e1c0b52622 Competition Track Builder>
