try
    na=size(a);
    A=0;
    B=0;
    nb=size(b);
%%Generation A:
        for ii=0:na(2)+1
            
            if ii==na(2)+1
                break
            
            end
            if ii~=na(2)
                A=a(1,ii+1)*z^-ii + A;
            end
            
        end
%%Generation B:
       for jj=0:nb(2)+1
            
            if jj==nb(2)+1
                break
            
            end
            if jj~=nb(2)
                B=b(1,jj+1)*z^-jj + B;
            end
            
       end
%%Gerneration A_t
A_t=0;
n_A=size(a_t);
for iii=0:n_A(2)+1
            
            if iii==n_A(2)+1
                break
            
            end
            if iii~=n_A(2)
                A_t=a_t(1,iii+1)*z^-iii + A_t
            end
            
        end
catch
    disp('error for generation.m')
end