function varargout = save(preset)
%% Description
%   Presets defined for saving image to disk
%   WARNING: changing values here will change default behaviour for plots
%   where no style is provided
%
% Author
%   Naveed Ejaz (ejaz.naveed@gmail.com)

%% 0. Define presets
preset_name = {'1col','2col','2row','3row'};
preset_val  = {[0 0 9 9],...
               [0 0 18.5 9],...
               [0 0 18.5 18.5],...
               [0 0 18.5 27]};        

%% Check input
if nargin==0
    fprintf('\nSave presets:\n-------------\n');
    
    for i=1:length(preset_name)
        fprintf('%d.\t%s, \t%1.2fcm x %1.2fcm\n',i,preset_name{i},...
                                                         preset_val{i}(3),preset_val{i}(4));
    end;
    opt = [];
else
    idx = find(strcmp(preset_name,preset));
    
    opt.save.preset         = preset_name{idx};
    opt.save.paperposition 	= preset_val{idx};    
    opt.save.dpi            = 300;
    opt.save.papermode      = 'manual';
    opt.save.format         = 'pdf';
    opt.save.rendering      = 'painters';
    opt.save.ui             = 'noui';
    opt.save.style          = 'none';
end;

if nargout>0
    varargout   = {opt};
end;
