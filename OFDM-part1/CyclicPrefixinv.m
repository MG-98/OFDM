function [cp_inv] = CyclicPrefixinv(matrix,mu)
    % Remove the added prefix from the matrix
    
    dim = size(matrix);
    cp_inv =[matrix(mu+1:dim(1),:)];
end

