try
        disp('>>>Enter the valus nu and N1 and N2 and d<<<')
        nu=input('nu=');
        N1=input('N1=');
        N2=input('N2=');
        d=input('d=');
        disp('[+]The GPC_EF function works fine and generates {Fi} elements')
        syms z
%%
%[!]-Calculating Fi values:
        for i=N1+d:N2+d+1
            %eval(sprintf('syms F%d',i))
            eval(sprintf('F%d=0',i));
            for j=0:nu
                %eval(sprintf('F%d = syms f%d+ 10*z^-%d +F%d',i,j,j,j))
                %eval(sprintf('F%d = syms f%d+ 10*z^-%d +F%d',i,j,j,i))
                eval(sprintf('syms f%d',i*10+j));
                %eval(sprintf('F%d=f%d +F%d',i,i*10+j,i))
                eval(sprintf('F%d =F%d + f%d*z^-%d',i,i,i*10+j,j))
            end
        end
%% [!]Calculating Ei valus:
        for i=N1+d:N2+d+1
            %eval(sprintf('syms F%d',i))
            eval(sprintf('E%d=0',i))

            for j=0:i-1
                eval(sprintf('syms e%d',i*10+j));
                eval(sprintf('E%d =E%d + e%d*z^-%d',i,i,i*10+j,j))
            end
        end
%% Error handling:
    catch
             disp('[**]Enter the variables nu,N1,N2,d')
             disp('[!!]An error in the formation of {Fi},so the error is in the GPC_EF function.')
    end 
