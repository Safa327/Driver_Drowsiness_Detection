# Driver_Drowsiness_Detection
Driver Drowsiness Detection System using MATLAB detects driver fatigue through face and eye recognition techniques. The system analyzes images, identifies eye closure, and triggers an alert when drowsiness is detected, helping improve road safety through computer vision and image processing.
# Driver Drowsiness Detection System

A MATLAB-based Driver Drowsiness Detection System that uses computer vision techniques to identify driver fatigue by detecting facial features and eye closure.

## Overview

Driver drowsiness is one of the major causes of road accidents worldwide. This project uses MATLAB's Computer Vision Toolbox to detect a driver's face and eyes from an image.

The system:

1. Detects the driver's face.
2. Detects the eyes.
3. Determines whether the driver is awake or drowsy.
4. Triggers an alarm if drowsiness is detected.

## Features

- Face Detection using Viola-Jones algorithm
- Eye Detection using EyePairBig classifier
- Drowsiness Alert System
- Simple MATLAB implementation
- Easy to extend for real-time video processing

## Technologies Used

- MATLAB
- Computer Vision Toolbox
- Image Processing Toolbox

## Algorithm

1. Read input image.
2. Convert image to grayscale.
3. Detect face.
4. Detect eye pair.
5. If eyes are not detected:
   - Display "DROWSINESS DETECTED!"
   - Trigger alarm sound.
6. Else:
   - Display "Driver Awake".

## Project Structure

```text
Driver-Drowsiness-Detection/
├── src/
├── sample_images/
├── screenshots/
├── docs/
└── assets/
