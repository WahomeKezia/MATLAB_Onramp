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