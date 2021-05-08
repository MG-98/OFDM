function [seq_line] = parallel2series(p2s)
    % Convert the sequence line vector [N*1] to a matrix format 
    % [number of subcarrier , N/number of subcarriers] 
    
    dim = size(p2s);
    seq_line = reshape(p2s , 1, dim(1)*dim(2));
    
end