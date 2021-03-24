# `slope_field` [![View Slope Field Generator for ODEs (slope_field) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85433-slope-field-generator-for-odes-slope_field)

Draws the slope field of a first-order, univariate, ordinary differential equation.


## Syntax
`slope_field(f,[xmin,xmax],[ymin,ymax])`\
`slope_field(f,[xmin,xmax],[ymin,ymax],density,color,width)`\
`fig = slope_field(__)`


## Description

`slope_field(f,[xmin,xmax],[ymin,ymax])` draws the slope field of a differential equation <img src="https://latex.codecogs.com/svg.latex?dy&space;/&space;dx=f(x,y)" title="dy / dx=f(x,y)" /> , where `f` is the function handle of <img src="https://latex.codecogs.com/svg.latex?f(x,y)" title="f(x,y)" />, and where `[xmin,xmax]` and `[ymin,ymax]` define the domain <img src="https://latex.codecogs.com/svg.latex?D=\left\{\left(x,y\right)|x_{\mathrm{min}}\leq&space;x\leq&space;x_{\mathrm{max}},y_{\mathrm{min}}\leq&space;y\leq&space;y_{\mathrm{max}}\right\}" title="D=\left\{\left(x,y\right)|x_{\mathrm{min}}\leq x\leq x_{\mathrm{max}},y_{\mathrm{min}}\leq y\leq y_{\mathrm{max}}\right\}" /> over which the slope field is drawn.

`slope_field(f,[xmin,xmax],[ymin,ymax],density,color,width)` draws the slope field of a differential equation <img src="https://latex.codecogs.com/svg.latex?dy&space;/&space;dx=f(x,y)" title="dy / dx=f(x,y)" /> , where `f` is the function handle of <img src="https://latex.codecogs.com/svg.latex?f(x,y)" title="f(x,y)" />, and where `[xmin,xmax]` and `[ymin,ymax]` define the domain <img src="https://latex.codecogs.com/svg.latex?D=\left\{\left(x,y\right)|x_{\mathrm{min}}\leq&space;x\leq&space;x_{\mathrm{max}},y_{\mathrm{min}}\leq&space;y\leq&space;y_{\mathrm{max}}\right\}" title="D=\left\{\left(x,y\right)|x_{\mathrm{min}}\leq x\leq x_{\mathrm{max}},y_{\mathrm{min}}\leq y\leq y_{\mathrm{max}}\right\}" /> over which the slope field is drawn. Additionally, `density` defines the number of lines to draw in the horizontal direction (effectively controlling how many lines are drawn to create the slope field), and `color` and `width` define the color and line width, respectively, of the lines.

`fig = slope_field(__)` draws the slope field and also returns the figure handle of the slope field. You can use any of the input arguments in the previous syntaxes.


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
