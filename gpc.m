try
        syms z
        GPC_help()
        k1=[];
        k2=[];
        disp('>>>Enter the valus nu and N1 and N2 and d<<<');
        a=input('Enter the function in matrix form A(z^-1)=');
        b=input('Enter the function in matrix form B(z^-1)=');
        gen_Ateld()
        generation()
        nu=input('nu=');
        N1=input('N1=');
        N2=input('N2=');
        d=input('d=');
        disp('[+]The GPC_EF function works fine and generates {Fi} elements')
%%
%[!]-Calculating Fi values:
        
        for i=N1+d:N2+d+1
            %eval(sprintf('syms F%d',i))
            eval(sprintf('F%d=0',i));
            for j=0:nu
                %eval(sprintf('F%d = syms f%d+ 10*z^-%d +F%d',i,j,j,j))
                %eval(sprintf('F%d = syms f%d+ 10*z^-%d +F%d',i,j,j,i))
                eval(sprintf('syms f%d',i*10+j));
                eval(sprintf('k2=[k2 f%d]',i*10+j))
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
                eval(sprintf('k1=[k1 e%d]',i*10+j))
                eval(sprintf('E%d =E%d + e%d*z^-%d',i,i,i*10+j,j))
            end
        end
        for ii=N1+d:N2+d+1
            eval(sprintf('J%d= A*E%d+z^-%d*B*F%d',ii,ii,ii,ii))
        end
%% Calculating ei et fi values:
        %E_gen(N1,d,N2,k1,k2,a,b)
%% Error handling:
    catch
             disp('[**]Enter the variables nu,N1,N2,d')
             disp('[!!]An error in the formation of {Fi},so the error is in the GPC_EF function.')
    end 
