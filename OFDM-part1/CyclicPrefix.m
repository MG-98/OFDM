function [cp] = CyclicPrefix(matrix,mu)
    % Apply the cyclic prefix algorithm over the input matrix 
    % with mu rows.
    
    dim = size(matrix);
    cp =[matrix(dim(1)-mu+1:dim(1),:) ;matrix];
    
end

