% In the previous project, you calculated the speed (in km/s) of a star relative to Earth by using its spectrum. In this project, you will calculate all the stars' speeds at once. Then you'll create this plot of the star spectra.


%This code loads the data and defines measurement parameters.
load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

% Task One 
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)

% Extracting the sixth column of spectra to a vector named s
s = spectra(:,6)

% plotting the spectra(s) as a function of lambds
plot(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")

%Find the wavelength of the hydrogen-alpha line by using idx to index into lambda. Store the result as lambdaHa (λHa) 
[sHa , idx ] = min(s)
lambdaHa = lambda(idx)

% Add a point to the existing axes by plotting x = lambdaHa, y = sHa as a red square ("rs") with a marker size ("MarkerSize") of 8.
hold on
plot(lambdaHa,sHa,"rs","MarkerSize",8)
hold off

% Calculate the redshift factor (z) and the speed (in km/s) at which the star is moving away from Earth. Assign the redshift factor to a variable named z and the speed to a variable named speed.

z = lambdaHa/656.28 - 1
speed = z*299792.458

% Having the script , you can easily change the the value of s to get the results of a different star 
