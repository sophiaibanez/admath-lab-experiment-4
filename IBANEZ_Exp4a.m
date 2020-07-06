   %INPUT THE VALUE OF N
n = input('Input the value of n from 2-4, n = ');

    %CONDITION
    while n < 2 || n > 4
        error('Invalid input! Enter value from 2-4 only.')
        n = input('Input the value of n, n = ');
    end 

%INPUT THE VALUE OF 'x'
x = input('Input the value of x, x = ');

    %CONDITION
    while  x <= 1 || x >= 4
        error('Invalid input! Enter a value between 1 and 4, but not equal to 1 or 4.')
        x = input('Input the value of x, x = ');
    end 
%IF USER CHOSE n = 2
if n == 2
    
%SET DATA POINTS
X = [1 2 3 4];
Y = [1 -2 2 3];

       
    %ASSIGNING VALUES
    x1 = floor(x);
    x2 = ceil(x);
    y1 = Y(x1);
    y2 = Y(x2); 
    
    %FORMULA    
    weigh1 = (x - x2)/(x1 - x2); 
    weigh2 = (x - x1)/(x2 - x1); 
    Yx = (y1*weigh1)+(y2*weigh2);
    
    fprintf('The value of f(%.2f)@ %.0f <= x <= %.0f is %.4f\n', x, x1, x2, Yx);
end


%IF USER CHOSE n = 3
if n == 3

       if(x >= 1 && x <= 2)
           %SET DATA POINTS
            X = [1 2 3];
            Y = [1 -2 2];
            
            %SET-UP
            l = length(X) - 1;
            Yx = 0; 
            for i = 1: l+1
                k = 1;
                for j =1 : l+1
                    if j ~= i
                       k = k * (x - X(j))/(X(i) - X(j));
                    end
                end
                Yx = Yx + Y(i) * k;
            end
             fprintf('The value of f(%.2f)@ 1 <= x <= 3 is %.4f\n', x, Yx);
      
             
       elseif (x > 2 && x < 2.5)
           %SET DATA POINTS
            X = [1 2 3];
            Y = [1 -2 2];
            
            %SET-UP
            l = length(X) - 1;
            Yx = 0; 
            for i = 1: l+1
                k = 1;
                for j =1 : l+1
                    if j ~= i
                       k = k * (x - X(j))/(X(i) - X(j));
                    end
                end
                Yx = Yx + Y(i) * k;
            end
            
            fprintf('The value of f(%.2f)@ 1 <= x <= 3 is %.4f\n', x, Yx);
        
            
       elseif(x > 2.5 && x < 3)
            %SET DATA POINTS
            X = [2 3 4];
            Y = [-2 2 3];
            
            %SET-UP
            l = length(X) - 1;
            Yx = 0;
            for i = 1: l+1
                k = 1;
                for j =1 : l+1
                    if j ~= i
                       k = k * (x - X(j))/(X(i) - X(j));
                    end
                end
                Yx = Yx + Y(i) * k;
            end
            
            fprintf('The value of f(%.2f)@ 2 <= x <= 4 is %.4f\n', x, Yx);
      
            
        elseif (x == 2.5)
            %SET DATA POINTS
            X = [1 2 3];
            Y = [1 -2 2];
            
            %SET-UP
            l = length(X) - 1;
            Yx = 0; 
            for i = 1: l+1
                k =1;
                for j =1 : l+1
                    if j ~= i
                       k = k * (x-X(j))/(X(i)-X(j));
                    end
                end
                Yx = Yx + Y(i) * k;
            end
            
            fprintf('The value of f(%.2f)@ 1 <= x <= 3 is %.4f\n', x, Yx);
            
            
        elseif (x >= 3.5 && x <= 4)
            %SET DATA POINTS
            X = [2 3 4];
            Y = [-2 2 3];
            
            %SET-UP
            l = length(X) - 1;
            Yx = 0;
            for i = 1: l+1
                k = 1;
                for j =1 : l+1
                    if j ~= i
                       k = k * (x - X(j))/(X(i) - X(j));
                    end
                end
                Yx = Yx + Y(i) * k;
            end
             fprintf('The value of f (%.2f)@ 2 <= x <= 4 is %.4f\n', x, Yx);
       
             
        elseif (x >= 3 && x <= 4)
            %SET DATA POINTS
            X = [2 3 4];
            Y = [-2 2 3];
            
            %SET-UP
            l = length(X) - 1;
            Yx = 0;
            for i = 1: l+1
                k = 1;
                for j =1 : l+1
                    if j ~= i
                       k = k * (x - X(j))/(X(i) - X(j));
                    end
                end
                Yx = Yx + Y(i) * k;
            end
             fprintf('The value of f(%.2f)@ 2 <= x <= 4 is %.4f\n', x, Yx);
             
       end
end

%IF USER CHOSE n = 4
if n == 4
    
%SET DATA POINTS
X = [1 2 3 4];
Y = [1 -2 2 3];

%SET-UP
l = length(X) - 1;
Yx = 0;
for i = 1: l+1
    k = 1;
    for j =1 : l+1
        if j ~= i
           k = k * (x - X(j))/(X(i) - X(j));
        end
    end
       Yx = Yx + Y(i) * k;
 end
fprintf('The value of f(%.2f)@ 1 <= x <= 4 is %.4f\n',x,Yx);

end