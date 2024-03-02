close all
clear all
addpath('functions');

% Constants and Initial Conditions
constantAndInitailConditions

% Satellite motion calculation
satelliteMotion

% Generate noisy measurements
noisyMeasurements

% Kalman filter
KalmanFilterDesign

% Plotting orbit and Earth
plotting_OrbitAndEarth

% Plotting orbit with noise
plotting_OrbitWithNoise

% Plotting orbit with Kalman Filter estimation
plotting_OrbitWithKalman
