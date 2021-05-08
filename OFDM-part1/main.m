clear; clc;
%%% Parameters
N  = 2^14; 
oversamp = 1; 
M =16;
num_carrier = 64;
mu = 16;

%% Sender
sequence_line = Sequencegenerator(N, oversamp , M);
s2p = series2parallel(sequence_line , num_carrier);
p_ifft = ifft(s2p);
CpMatrix = CyclicPrefix(p_ifft,mu);


%% Reciver
p_ifft_reciver = CyclicPrefixinv(CpMatrix,mu);
p2s = fft(p_ifft_reciver);
sequence_line_reciver = parallel2series(p2s);

