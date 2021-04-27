function [Y,q,Q] = quantif(X,A,N)
% function [Y,q,Q] = quantif(X,N)
% This function simulates a uniform quantization.
% INPUT :
% X: input signal
% A: full-scale value
% N: Number of bits
%
% OUTPUT :
% Y: Quantization output
% q: quantization step
% Q: Quantized value (between 0 and 2^log2(N)-1)

high=A;
low=-A;
q = (high-low)/(2^N); % Quantization step size
Q = max(min(floor((X-low)/q),2^N-1),0); % Quantized value
low = low + q/2;
Y = low + q*Q; % Output