function show_legend
%% Description
%   Turns off visibility of legend in the current axes object
% Input
%       'ax'                : 'y' or 'x' or 'both'
%
% Author
%   Naveed Ejaz (ejaz.naveed@gmail.com)

%% 0. Hide selected axis
l = getappdata(gca);

if isfield(l,'LegendPeerHandle')
    set(l.LegendPeerHandle,'visible','on');
end;
