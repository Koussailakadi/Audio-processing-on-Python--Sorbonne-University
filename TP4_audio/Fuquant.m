function xq = Fuquant(x, N)
% quantificateur uniforme sur N bits
% saturation � +-1
% entr�e: vecteur de reels
% sortie: vecteur d'entiers positifs

if N>0
    pown = 2^(N-1);
    xq = pown*(x<0) + floor( pown *min(abs(x),1-1e-10) );
else
    xq = [];
end  