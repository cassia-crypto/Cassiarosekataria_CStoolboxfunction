function result = horzcat(varargin)
    // HORZCAT: Concatenates input matrices horizontally.
    //
    // Inputs:
    //   varargin: Variable number of input arguments (matrices)
    //
    // Output:
    //   result: A single matrix formed by horizontally concatenating the inputs.

    // Check if there are any inputs
    if nargin == 0 then
        error("horzcat: No input provided.");
    end

    // Initialize result with the first input
    result = varargin(1); // Use () to access the first element of varargin

    // Loop through the remaining inputs and concatenate
    for i = 2:nargin
        current = varargin(i); // Use () to access the i-th element of varargin

        // Check if the number of rows matches
        if size(result, 1) ~= size(current, 1) then
            disp("Matrix 1 size: ");
            disp(size(result));
            disp("Matrix 2 size: ");
            disp(size(current));
            error("horzcat: All matrices must have the same number of rows.");
        end

        // Perform horizontal concatenation
        result = [result, current];
    end
endfunction
