function [seq_line] = Sequencegenerator(N,oversamp,M)
    %This function return a seuqence line with length N and modulated with
    %M-QAM
    
    %%%%%%%  Parameters %%%%%%%
    %N : Number of symbols in the experiment
    % oversamp : oversampling factor
    % M: M-QAM
        
    % This is the exact implementation for the following formula θi =2π(i−1)/M
    l= sqrt(M);
    qam_matrix = [];
    for a = [-l+1:2:l-1]
        qam_matrix = [qam_matrix , a+[-l+1:2:l-1]*j];
    end
    
    %  a random generation for a seuence line with the length of Number of symbols N and choose randomly for a set of thetas generated previously
    seq_line = randsrc(1,N,qam_matrix); 
    s_i = seq_line *sqrt(1/2);
    s_i = upsample(s_i,oversamp);  

    
    
end

