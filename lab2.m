% Free Space Propogation Loss

% Close and clear previous graphs
close all
clear all

% Knowns:
    % Carrier frequency (MHz)
      f=900;
    % Speed of light (m/s)
      c=3*10^8;
    % Wavelength = speed of light / carrier frequency
      lambda=c/f;
    % Distances (in km)
      d=0:1:20;
    % Gain of transmitter and receiver are unity
      Gt=1;
      Gr=1;
    % System losses are unity
      L=1;

% Equations:
    % Path loss equation in free space
    % Path loss exponent in free space = 2
      PL_dB=20*log10(d)+20*log10(lambda)+20*log10(4*pi);
    % Path loss when path loss exponent equals 3
      PL3=PL_dB*1.5;
    % Path loss when path loss exponent equals 4
      PL4=PL_dB*2;

% Graphing Free Space Propogation Loss
    % Plot path loss
      plot(d,PL_dB,'-vg',d,PL3,'-om',d,PL4,'-*c');
    % Label x and y axis
      xlabel('Distance Between Transmitter and Receiver (km)');
      ylabel('Path Loss (dB)');
    % Set title
      title('Free Space Propagation Model');
    % Create legend
      legend('Path Loss Exponent = 2','Path Loss Exponent = 3','Path Loss Exponent = 4');
