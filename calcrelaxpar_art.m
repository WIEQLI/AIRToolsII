function relaxpar = calcrelaxpar_art(relaxparinput)

% Default choice 1. If use gave as input, use that value and throw warning
% if outside [0,2], but proceed.
if isnan(relaxparinput)
    relaxpar = 1;
else
    if relaxparinput <= 0 || relaxparinput >= 2
        warning('MATLAB:UnstableRelaxParam',...
            'The relaxpar value is outside the interval (0,2)');
    end
    relaxpar = relaxparinput;
end