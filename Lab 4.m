%5.1
help plot
 plot   Linear plot. 
    plot(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    plot(Y) plots the columns of Y versus their index.
    If Y is complex, plot(Y) is equivalent to plot(real(Y),imag(Y)).
    In all other uses of plot, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    plot(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, plot(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; plot(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    plot(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, plot(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The plot command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    plot cycles through the colors in the ColorOrder property.  For
    monochrome systems, plot cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while plot(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, plot uses no marker. 
    If you do not specify a line style, plot uses a solid line.
 
    plot(AX,...) plots into the axes with handle AX.
 
    plot returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, plot(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also plottools, semilogx, semilogy, loglog, plotyy, plot3, grid,
    title, xlabel, ylabel, axis, axes, hold, legend, subplot, scatter.

    Reference page for plot
    Other functions named plot
%6.1
   x=[0:0.1:1.6];
%�������� ���� ����� ����� �������(3)
f=(exp(-x).*2)./(2.*x+x.^3)
plot(f)
%6.2
x=[0:0.1:1.6];
f=(exp(-x).*2)./(2.*x+x.^3)
plot(f)
title('name of graphic') %�������� �������
xlabel('some x') %�������� �� �
ylabel('some y') %�������� �� �
legend('some function') %�������
%6.3
x=[0:0.1:1.6];
f = (exp(-x).*2)./(2.*x+x.^3)%1 �������
k = sin(f)%2 �������
plot(f);
hold on;
plot(k);
title('both func') %�������� �������
xlabel('Parametr x') %�������� �� �
ylabel('Parametr y') %�������� �� �
legend('func f','func k') %�������
hold off;
%7.1
t = -pi:pi/200:pi;
        comet(t,tan(sin(t))-sin(tan(t)))
%7.2
t = -pi:pi/200:pi;
        comet3(t,tan(sin(t))-sin(tan(t)))
%8.2
f=[1 -2 1 ]; 
d=roots(f) 
%9
save('lab3prev','p')
clear
load('lab3prev','p')
p

