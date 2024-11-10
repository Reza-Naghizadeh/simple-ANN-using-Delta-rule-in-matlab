# README: Neural Network Training using Delta Rule

## Overview

This script implements a simple 2D binary classification neural network using the delta rule. The network is trained to classify a set of data points into two categories (target values: `1` or `0`) based on the given input. The script utilizes a sigmoid activation function and updates weights and bias iteratively using the delta rule over 1000 epochs.

This code was developed as part of my **Artificial Neural Networks (ANN) course project** at the **Institute for Advanced Studies in Basic Sciences (IASBS)**.

## Features

- **Input and Target Data**: A set of 2D input points and their corresponding binary target values.
- **Sigmoid Activation Function**: Used to generate the output of the network.
- **Delta Rule**: Employed to update weights and bias during training.
- **Plotting**: Visualizes the data points, initial network, and final decision boundary.

## Prerequisites

This script is written in MATLAB and requires the following:
- MATLAB (any version that supports basic plotting functions and matrix operations).
  
## Components

1. **Input Data**: The `input` matrix contains 10 2D data points, and the `target` vector holds their corresponding binary classification values (`1` or `0`).

2. **Network Initialization**:
   - Random initial weights (`weight`) for the 2D input.
   - A bias term (`bias`) initialized to 0.2.
   - The learning rate (`learningRate`) is set to 0.5.
   - The number of epochs (`epoch`) is set to 1000.

3. **Training Loop**:
   - The training process iterates through each input data point.
   - For each point, the network calculates an output using the sigmoid function:  
     \[
     output = \frac{1}{1 + e^{-(weight \cdot point' + bias)}}
     \]
   - The delta rule is applied to update the weights and bias based on the error between the predicted and desired target.

4. **Visualization**:
   - The script plots the initial input data points with their respective targets.
   - After training, the decision boundary is plotted to visualize how the network has learned to classify the data points.

## How to Run

1. Copy and paste the code into a new MATLAB script file (e.g., `neural_network_training.m`).
2. Run the script in MATLAB.
3. The script will display the data points and weight updates for each epoch, and at the end, it will plot the final decision boundary learned by the network.

## Example Output

- **Initial Data Points**: The input data points will be displayed on a 2D plot, with colors representing their target classes (`1` or `0`).
- **Weight Updates**: For each point, the script will display the current point, the desired target, and the updated weight values.
- **Final Decision Boundary**: After training, a plot will show the decision boundary learned by the network based on the final weights and bias.

## Notes

- The code uses the **sigmoid activation function** and **delta rule** for weight and bias updates. The learning rate and number of epochs are tunable.
- The model is a simple linear classifier for this toy example and can be extended or modified for more complex tasks.
- For larger datasets, more sophisticated training techniques or optimizations may be required.