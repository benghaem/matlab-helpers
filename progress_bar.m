function [ ] = progress_bar( completion, width, overwrite )
%PROGRESS_BAR Display a simple progress bar
%  progress_bar( completion, width, overwrite )
%
%  completion - Value in range 0-1
%  width - number of #'s used in bar
%  overwrite - overwrite the previous bar
%
%  Use as follows:
%  progress_bar(0,width,0)
%  for 1:n
%    progress_bar(1/n,width,1)
%  end

    charcount = floor(completion * width);

    if overwrite
        for o = 0:width+1
            fprintf(1,'\b');
        end
    end

    fprintf(1,'[');
    
    for i = 0:charcount
        if i ~= 0
            fprintf(1,'#');
        end
    end
    
    for j = 1:width-i;
        fprintf(1,' ');
    end
    
    fprintf(1,']');
    
    if completion == 1
        fprintf(1,'\n');
    end
end

