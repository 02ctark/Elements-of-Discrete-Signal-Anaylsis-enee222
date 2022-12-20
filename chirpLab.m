fsamp = 11025;
dt = 1/fsamp;
dur = 1.8;
tt = 0 : dt : dur;
psi = 2*pi*(100 + 200*tt + 500*tt.*tt);
xx = real( 7.7*exp(j*psi) );
soundsc( xx, fsamp );
tt




% a) tt has a length of 1.8 seconds, 

% b) where tn = nTs represents discrete time instants. In the MATLAB code above, what is the value for
% tn? What are the values of A, µ, f0, and φ?
% A = 1 , µ = 2.768, f0 = 60, φ = 250

% c) Make a sketch by hand of the instantaneous frequency versus time. What are the minimum and
% maximum frequencies that will be heard? the min and max is 500, -500

% d) Listen to the signal to determine whether the signal’s frequency content is increasing or decreasing
% (use soundsc()). Notice that soundsc() needs to know the sampling rate at which the signal
% samples were created. For more information do help sound and help
% sound(). increases. 

% define inputs
f1_ = 400;
f2_ = 500;
dur_ = 1;
fsamp_ = 44100;
% call the function mychirp
[channel_1, time] = mychirp(f1_, f2_, dur_, fsamp_)
% ************* TO DO *******************
% substitute previous code, with signal replacing your music/previous
% signal


function [xx,tt] = mychirp( f1, f2, dur, fsamp )
% MYCHIRP generate a linear-FM chirp signal
%
% usage: xx = mychirp( f1, f2, dur, fsamp )
%
% f1 = starting frequency
% f2 = ending frequency
% dur = total time duration
% fsamp = sampling frequency (OPTIONAL: default is 11025)
%
% xx = (vector of) samples of the chirp signal
% tt = vector of time instants for t=0 to t=dur
% ************** TO DO FOR THIS LAB
tt = 0:1.8;   %   ************ FILL IN 
xx = tt;      %   ************ FILL IN
if( xx < 20 ) %-- Allow optional input argument
fsamp = 11025;
end
end