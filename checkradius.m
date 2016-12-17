function [ out ] = checkRadius(val, i,j,s )
    if (min(min([i-s,j-s:j+s]))<=val)
        out=1;
    elseif (min(min([i+s,j-s:j+s]))<=val)
        out=1; 
    elseif (min(min([i-s+1:i+s-1,j-s]))<=val)
        out=1;
    elseif (min(min([i-s+1:i+s-1,j+s]))<=val)
        out=1;
    else 
        out=0;
    end
end 