% Free Space Propogation Loss vs. Two-Ray Ground Reflection Model

% Close and clear previous graphs
close all
clear all

% Knowns:
    % Carrier frequency (MHz)
      f = 900;
    % Speed of light (m/s)
      c = 3*10^8;
    % Distances (in km)
      d = 0:1:20;
    % Gain of transmitter and receiver are unity
      Gt = 1;
      Gr = 1;
      G = Gt * Gr;
    % System losses are unity
      L = 1;
    % Height of transmitter and receiver (in km)
      ht = .03;
      hr = .001;
      ht2 = ht^2;
      hr2 = hr^2;
    % Path loss exponent
      PL_exp = 2;
      
% Equations:
    % Free space propogation model (dB)
      PL_fs = 20*log10(d) + 20*log10(f) + 32.45;
    % Two-ray ground reflection model (dB)
      PL_tr = 40*log10(d) - 10*log10(G*ht2*hr2);


% Graphing Free Space Propogation Loss
    % Plot path loss
      plot(d,PL_fs,'-vg',d,PL_tr,'-om');
    % Label x and y axis
      xlabel('Distance Between Transmitter and Receiver (km)');
      ylabel('Path Loss (dB)');
    % Set title
      title('Free Space Propagation Model vs. Two-Ray Ground Reflection Model');
    % Create legend
      legend('Free Space Propogation Model','Two-Ray Ground Reflection Model');
