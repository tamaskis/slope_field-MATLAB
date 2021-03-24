% slope_field  Draws the slope field of a first-order, univariate, ordinary
% differential equation.
%
%   slope_field(f,[xmin,xmax],[ymin,ymax]) draws the slope field of a
%   differential equation dy/dx=f(x,y), where "f" is the function handle of
%   f(x,y), and where "[xmin,xmax]" and "[ymin,ymax]" define the domain 
%   over which the slope field is drawn.
%
%   slope_field(f,[xmin,xmax],[ymin,ymax],density,color,width) draws the 
%   slope field of a differential equation dy/dx=f(x,y), where "f" is the 
%   function handle of f(x,y), and where "[xmin,xmax]" and "[ymin,ymax]" 
%   define the domain over which the slope field is drawn. Additionally,
%   "density" defines the number of lines to draw in the horizontal
%   direction (effectively controlling how many lines are drawn to create
%   the slope field), and color and width define the color and line width,
%   respectively, of the lines.
%
%   fig = slope_field(__) draws the slope field and also returns the figure
%   handle of the slope field. You can use any of the input arguments in
%   the previous syntaxes.
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/85433-slope-field-generator-for-odes-slope_field
% GitHub: https://github.com/tamaskis/slope_field-MATLAB
%
% See "DOCUMENTATION.pdf" for additional documentation and examples. 
% Examples can also be found in EXAMPLES.m. Both of these files are 
% included with the download.
%
% Copyright (c) 2021 Tamas Kis
% Last Update: 2021-03-24



%% FUNCTION

% INPUT:  f - function handle for dy/dx = f(x,y)
%         [xmin,xmax] - lower and upper bounds of independent variable
%         [ymin,ymax] - lower and upper bounds of dependent variable
%         density - line density (OPTIONAL)
%         color - line color (OPTIONAL)
%         width - line width (OPTIONAL)
% OUTPUT: figure handle of slope field plot
function fig = slope_field(f,x_domain,y_domain,density,color,width)
    
    % sets default values of density, color, and width if not specified
    if nargin == 3
        density = 20;
        color = 'k';
        width = 1.25;
    end
    
    % domain limits (rounds values in case non-integers are entered)
    xmin = floor(x_domain(1));
    xmax = ceil(x_domain(2));
    ymin = floor(y_domain(1));
    ymax = ceil(y_domain(2));
    
    % creates mesh
    x = xmin:((xmax-xmin)/density):xmax;
    y = ymin:((xmax-xmin)/density):ymax;
    
    % length of lines
    L = 0.75*(xmax-xmin)/density;
    
    % initializes figure and sets axes limits
    fig = figure;
    axis equal;
    xlim([xmin-L/2,xmax+L/2]);
    ylim([ymin-L/2,ymax+L/2]);
    
    % plots lines (slopes)
    hold on;
    for i = 1:length(x)
        for j = 1:length(y)
            
            % initially assumes the slope will not be indeterminate
            indeterminate = false;

            % calculates slope and avoids division by 0 errors
            try
                slope = f(x(i),y(j));
            catch
                indeterminate = true;
            end

            % angle formed by slope
            if indeterminate
                angle = pi/2;
            else
                angle = atan(slope);
            end

            % calculates components of line
            dx = L*cos(angle)/2;
            dy = L*sin(angle)/2;

            % plots line (but only if slope is real)
            if isreal(slope)
                plot([x(i)-dx,x(i)+dx],[y(j)-dy,y(j)+dy],'color',color,...
                'linewidth',width);
            end
            
        end
    end
    hold off;

end