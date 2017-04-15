% Modeling of Okumura-Hata Propagation Model

% Close and clear previous graphs
close all
clear all

% Knowns:
    % Freuency of operation (MHz)
      f=900;
    % Height of base station (m)
      hb=30;
    % Height of mobile station (m)
      hm=1;
    % Range (km)
      r=linspace(1,20,20);

% Equations:
    % Correction factor for small/medium cities
      ahm=(1.1*log10(f)-0.7)*hm-(1.56*log10(f)-0.8)
    % Parameters A, B, C, and D
      A=69.55+26.16*log10(f)-13.82*log10(hb)-ahm;
      B=44.9-6.55*log10(hb);
      C=5.4+2*(log10(f/28))^2;
      D=40.94+4.78*(log10(f))^2-18.33*log10(f);
    % Path Loss Equations (urban, suburban, and open)
      Lp_urban=A+B*log10(r);
      Lp_suburban=A+B*log10(r)-C;
      Lp_open=A+B*log10(r)-D;

% Plot:
    % Plot graph:
      % Urban Path Loss: solid, green line with triangles
      % Suburban Path Loss: solid, magenta line with circles
      % Open Path Loss: solid, cyan line with stars
      plot(r,Lp_urban,'-vg',r,Lp_suburban,'-om',r,Lp_open,'-*c');
    % Turn on Grid
      grid on
    % Label x and y axis
      xlabel('Distance between transmitter and receiver (km)');
      ylabel('Path Loss (dB)');
    % Title plot and add legend
      title('Modeling of Okumura-Hata Propagation Model');
      legend('Urban','Suburban','Open',4);
