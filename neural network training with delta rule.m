input = [10 2; 5 5; 4 16; -4 -5; 0 0; -14 -15; -13 -12; -6 -3; -10 15; -4 1]; % diffrent points as inputs
target = [1; 1; 1; 1; 1; 0; 0; 0; 0; 0]; %Desire targets for inputs

weight = [rand, rand]; % Initial random weight
bias = 0.2; % Bias
epoch = 1000; % Epoch max
learningRate = 0.5; % Learning rate for correction

plotpv(input',target'); % Plot each point with desire target as class

% Epoch controller for loop
for round = 1:epoch
    % Each point for loop
    for i = 1:length(input)
        point = input(i,:); % Chossing each point
        desireTarget = target(i); % Chosing desire target
        % weightedSum = weight * point' + bias; % Compute the output as activation function
        output = 1/(1+exp(-(weight * point' + bias)));

        % Weight correction
        weight = weight + learningRate * (desireTarget - output) * output * (1 - output) * point;
        % Bias correction
        bias = bias + learningRate * (desireTarget - output) * output * (1 - output);

        % Another formula that i found online
        % error = desireTarget - output; % Compute e (desire target minus a that we found inside output cheker)
        % weight = weight + error * (output * (1 - output)) * point; % Weight correction
        % bias = bias + error * (output * (1 - output)); % Bias correction

        % Display points and outputs
        disp('Point is :');
        disp(point);
        disp('Weight is :');
        disp(weight);

    end

end

plotpc(weight,bias); % Plot line with weight and bias
% hold on; % Keep everything on the figure
% pause(0.01); % To have animation effect and have a good view of each round