function varargout = general(canvas_type,plot_color)
%% Description
%   Defaults used for all plots
%   WARNING: changing values here will change default behaviour for plots
%   where no style is provided
%
% Author
%   Naveed Ejaz (ejaz.naveed@gmail.com)

%% 0. Parse input
if nargin==0
    canvas_type     = 'paper';
    plot_color      = 'black';
elseif nargin==1
    plot_color      = 'black';
end;


%% 1. General plotting styles
plot_color                  = plt.defaults.colours(plot_color);
opt.general.facecolor       = plot_color;
opt.general.linecolor       = plot_color;
opt.general.patchcolor      = plot_color;
opt.general.errorcolor      = plot_color;
opt.general.markerfill      = plot_color;
opt.general.markercolor     = plot_color;
opt.general.shadecolor      = plot_color;
opt.general.fillcolor       = plot_color;
opt.general.linewidth       = 1.5;
opt.general.markersize      = 8;
opt.general.errorwidth      = 1.5;
opt.general.markertype      = 'o';
opt.general.linestyle       = '-';

%% 2. Legend
opt.legend.leg              = 'auto';
opt.legend.leglocation      = 'northeast';

%% 3. Display properties for labels and text
opt.display.xlabel          = '';
opt.display.ylabel          = '';
opt.display.title           = '';
opt.display.panel_title     = '';
opt.display.ax              = 'normal';
opt.display.legvisible      = 'on';
opt.display.tickdir         = 'out';
opt.display.xprecision      = [];
opt.display.yprecision      = [];

%% 4. Font sizes
opt.font.fontname           = 'myriadpro';
opt.font.fontunits          = 'points';
opt.font.fontsize           = 12;
opt.font.title_fontsize     = 14;
opt.font.leg_fontsize       = 12;
opt.font.panel_fontsize     = 16;
opt.font.panel_fontweight   = 'bold';
opt.font.panel_horzalign    = 'right';
opt.font.panel_vertalign    = 'baseline';

%% 5. Canvas properties
opt                         = addstruct(opt,plt.defaults.canvas(canvas_type));
opt.canvas.type             = canvas_type;
opt.canvas.papertype        = 'a4';
opt.canvas.units            = 'centimeters';
opt.canvas.menubar          = 'none';
opt.canvas.resize           = 'on';

varargout   = {opt};
