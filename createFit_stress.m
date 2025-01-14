function [fitresult, gof] = createFit_stress(om_temp, om_stress)
%CREATEFIT1(OM_TEMP,OM_STRESS)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input: om_temp
%      Y Output: om_stress
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 24-Jan-2024 16:59:50


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( om_temp, om_stress );

% Set up fittype and options.
ft = 'linearinterp';
opts = fitoptions( 'Method', 'LinearInterpolant' );
opts.ExtrapolationMethod = 'linear';
opts.Normalize = 'on';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );


