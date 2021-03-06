function [s2p] = series2parallel(seq_line,num_sub_carrier)
    % Convert the sequence line vector [N*1] to a matrix format 
    % [number of subcarrier , N/number of subcarriers] 
    
    s2p = reshape(seq_line , num_sub_carrier , length(seq_line)/num_sub_carrier);
    
end

