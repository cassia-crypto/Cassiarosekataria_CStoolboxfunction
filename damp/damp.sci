funcprot();
function [zeta, wn, tau] = damp(poles)
    // Calculate damping ratio (zeta), natural frequency (wn), and time constant (tau)
    // Input: poles - a vector of poles of the system
    // Output: zeta - damping ratio, wn - natural frequency, tau - time constant

    zeta = abs(real(poles)) ./ abs(poles); // Damping ratio
    wn = abs(poles); // Natural frequency
    tau = 1 ./ abs(real(poles)); // Time constant
    
    // Display results
    disp("Damping Ratio (zeta): " + string(zeta));
    disp("Natural Frequency (wn): " + string(wn));
    disp("Time Constant (tau): " + string(tau));
endfunction
