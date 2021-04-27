%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   MIDTREAD_DEQUANTIZER    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ret_value] = Fuquant_inv(xq,R)

if R==0
    ret_value=0;
else
    sign = (2 * (xq < 2^(R-1))) - 1;
    Q = 2 / (2^R - 1); 

    x_uint = uint32(xq);
    x = bitset(x_uint,R,0);      
    x = double(x);
    ret_value = sign * Q .* x;
end