function labels(xlab,ylab,fig_title,panelID,subplotID)
%% Description
%   Set labels on the figure
% Input
%       'xlab'                  : label for the x-axis of current axes
%       'ylab'                  : label for the y-axis of current axes
%       'fig_title'             : title of the main plot in current axes
%       'panelID'               : id/name given to the subplot panel
%       'subplotID'             : subplot to set labels to
% Example: 
%   (1) make a plot and set figure properties
%       plt.labels('force',{'activation','(arbitrary units)'},'title');
%
% Author
%   Naveed Ejaz (ejaz.naveed@gmail.com)

%% 0. Check number inputs
sty = style.get;
if nargin==1
    ylab        = sty.display.ylabel;
    fig_title   = sty.display.title;
    panelID     = sty.display.panel_title;
    subplotID   = [];
elseif nargin==2
    fig_title   = sty.display.title;
    panelID     = sty.display.panel_title;
    subplotID   = [];
elseif nargin==3
    panelID     = sty.display.panel_title;
    subplotID   = [];
elseif nargin==4
    subplotID   = [];
end;


%% 1. Set labels
if isempty(subplotID)
    h   = gca;
else
    h   = subplot(subplotID);
end;

set(get(h,'xlabel'),'string',xlab,'fontname',sty.font.fontname,'fontunits',sty.font.fontunits);
set(get(h,'ylabel'),'string',ylab,'fontname',sty.font.fontname,'fontunits',sty.font.fontunits);
set(get(h,'title'),'string',fig_title,'fontsize',sty.font.title_fontsize,...
                                      'fontname',sty.font.fontname);
if ~isempty(panelID)
    plt.panel(panelID);
end;
