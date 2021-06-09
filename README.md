# `slope_field` [![View Slope Field Generator for ODEs (slope_field) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85433-slope-field-generator-for-odes-slope_field)

Fits a linear, polynomial, exponential, or logarithmic model to a set of data using linear least squares.


## Syntax

`slope_field(f,[xmin,xmax],[ymin,ymax])`\
`slope_field(f,[xmin,xmax],[ymin,ymax],density,color,width)`\
`fig = slope_field(__)`


## Description

`slope_field(f,[xmin,xmax],[ymin,ymax])` draws the slope field of a differential equation <img src="https://latex.codecogs.com/svg.latex?\inline&space;dy/dx=f(x,y)"/>, where `f` is the function handle of <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x,y)"/>, and where `[xmin,xmax]` and `[ymin,ymax]` define the domain <img src="https://latex.codecogs.com/svg.latex?\inline&space;D=\left\lbrace&space;(x,y)\,|\,x_{{\mathrm{m}\mathrm{i}\mathrm{n}}}&space;\le&space;x\le&space;x_{{\mathrm{m}\mathrm{a}\mathrm{x}}}&space;,y_{{\mathrm{m}\mathrm{i}\mathrm{n}}}&space;\le&space;x\le&space;y_{{\mathrm{m}\mathrm{a}\mathrm{x}}}&space;\right\rbrace"/> over which the slope field is drawn.

`slope_field(f,[xmin,xmax],[ymin,ymax],density,color,width)` draws the slope field of a differential equation <img src="https://latex.codecogs.com/svg.latex?\inline&space;dy/dx=f(x,y)"/>, where `f` is the function handle of <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x,y)"/>, and where `[xmin,xmax]` and `[ymin,ymax]` define the domain <img src="https://latex.codecogs.com/svg.latex?\inline&space;D=\left\lbrace&space;(x,y)\,|\,x_{{\mathrm{m}\mathrm{i}\mathrm{n}}}&space;\le&space;x\le&space;x_{{\mathrm{m}\mathrm{a}\mathrm{x}}}&space;,y_{{\mathrm{m}\mathrm{i}\mathrm{n}}}&space;\le&space;x\le&space;y_{{\mathrm{m}\mathrm{a}\mathrm{x}}}&space;\right\rbrace"/> over which the slope field is drawn. Additionally, `density` defines the number of lines to draw in the horizontal direction (effectively controlling how many lines are drawn to create the slope field), and `color` and `width` define the color and line width, respectively, of the lines.

`fig = slope_field(__)` draws the slope field and also returns the figure handle of the slope field. You can use any of the input arguments in the previous syntaxes.


## Examples

   -  See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
