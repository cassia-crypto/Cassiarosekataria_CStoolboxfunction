function H_s = thiran_approximation(b, a)
    // Validate inputs
    if size(b, 1) ~= 1 | size(a, 1) ~= 1 then
        error("Numerator and Denominator must be row vectors.");
    end
    
    // Define 's' as the Laplace variable
    s = poly(0, 's'); // Define s as a polynomial in 's'
    
    // Initialize numerator and denominator polynomials
    num_poly = 0; // Start with zero
    den_poly = 0; // Start with zero
    
    // Apply the Thiran approximation for the numerator
    for i = 1:length(b)
        num_poly = num_poly + b(i) * (s / (s + 1))^(i - 1);
    end
    
    // Apply the Thiran approximation for the denominator
    for i = 1:length(a)
        den_poly = den_poly + a(i) * (s / (s + 1))^(i - 1);
    end
    
    // Form the transfer function
    H_s = num_poly / den_poly;
endfunction
