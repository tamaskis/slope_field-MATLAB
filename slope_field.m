%==========================================================================
%
% slope_field  Draws the slope field of a first-order, univariate, ordinary
% differential equation.
%
%   slope_field(f,[xmin,xmax],[ymin,ymax])
%   slope_field(f,[xmin,xmax],[ymin,ymax],density,color,width)
%   fig = slope_field(__)
%
% Copyright © 2021 Tamas Kis
% Last Update: 2021-06-09
%
%--------------------------------------------------------------------------
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/85433-slope-field-generator-for-odes-slope_field
% GitHub: https://github.com/tamaskis/slope_field-MATLAB
%
% See EXAMPLES.mlx (included with download) for examples.
%
%--------------------------------------------------------------------------
%
% -------
% INPUTS:
% -------
%   f               - (function_handle) dy/dx = f(x,y)
%   [xmin,xmax]     - (1×2) lower and upper bounds of independent variable
%   [ymin,ymax]     - (1×2) lower and upper bounds of dependent variable
%   density         - (OPTIONAL) (1×1) line density
%   color           - (OPTIONAL) (1×3) [rgb] line color
%   width           - (OPTIONAL) (1×1) line width
%
% --------
% OUTPUTS:
% --------
%   fig             - (Figure) slope field plot
%
% -----
% NOTE:
% -----
%   --> "density" defines the number of lines to draw in the horizontal
%       direction (effectively controlling how many lines are drawn to
%       create the slope field)
%
%==========================================================================
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