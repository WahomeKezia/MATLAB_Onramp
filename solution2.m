% In the previous project, you calculated the speed (in km/s) of a star relative to Earth by using its spectrum. In this project, you will calculate all the stars' speeds at once. Then you'll create this plot of the star spectra.

% Comparing Stellar Spectra
% we are suing data from solution.m file 
load starData


% caculating the speed of one star 
[sHa,idx] = min(spectra(:,2));
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458

% caluclating the speed of all stars by deleting (:,2)
[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458

% the speed vector changes , this practice will involve the ploting all the seven stars using different line properties for a redshifted and blueshifted spectra. 

%  I will use a for loop to access each star's dta one at a time

for v = 1:7
    s = spectra(:,v);
end

% modigy the code above to plte te stars by Add an if statement to the for loop body. If speed(v) is less than or equal to 0, create a plot of s against lambda using a dashed line (--).

% Add the command hold on between the two end keywords so that you only create one plot

for v = 1:7
    s = spectra(:,v);

    if speed(v) <= 0
        plot(lambda,s,"--")
    end
    hold on
end

% Next to  plot the redshifted spectra using thick lines, I will add an else statement. If speed(v) is greater than 0, create a plot of s against lambda using a line width of 3.

% After the for loop , enter hold off.

for v = 1:7
    s = spectra(:,v);

    if speed(v) <= 0
        plot(lambda,s,"--")
    else
        plot(lambda,s,"LineWidth",3) 
    end
    hold on
end
hold off

% Add a legend to the plot using the array starnames.
% You can pass text directly to the legend function. The string array starnames contains the name of each star in spectra.

legend(starnames)

% In the plot, you identify stars with redshifted spectra by using their line styles, and then look up their names in the legend. Can you determine the names of the redshifted spectra without a for loop?

% Recall that you can use logical indexing to find elements that match a condition.

%  c = b(a < 6)


%  To do this , Create a variable movaway that contains the elements in starnames corresponding to where speed is greater than 0.

movaway = starnames(speed > 0) 
