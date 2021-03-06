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

%% Channel
flattened = reshape(CpMatrix,[1,80*256]);
h= [0.2+0.3i,0.7+0.9i,0.1+0.4i];
flattened=conv(flattened,h,'same');
CpMatrix = reshape(flattened,[80,256]);


%% Reciver
p_ifft_reciver = CyclicPrefixinv(CpMatrix,mu);
p2s = fft(p_ifft_reciver);
sequence_line_reciver = parallel2series(p2s);

hold on;
grid on;
plot(sequence_line,'o')
plot(sequence_line_reciver,'o')