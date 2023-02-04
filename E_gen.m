%function E_gen(N1,d,N2,k1,k2)
%% [!]Calculating Ei valus:
        s1=size(k1)
        s2=size(k2)
        h1=ones(1,s1(2))
        h2=ones(1,s2(2))
        ni=1;
        nj=2;
        for i=1:nu+2
           %if(s1(2)==s2(2))
           k1(1)=(1/a_t(1))
           for j=1:nu+2
               if j==nu+2
                   break
               end
               if j~=nu+2
                    eval(sprintf('equ%d=a_t(%d)*k1(%d)+k2(%d)',j+1,j,j)); %equation ei + fj =0
                    S=solve(equ==0,eval(sprintf('k2(%d)',j)));
                    if j~=1
                        if nj<ni
                            eval(sprintf('k1(%d)',j))=S
                            nj=nj+ni
                        end
                        if ni<nj
                            eval(sprintf('k2(%d)',j))=S
                            ni=ni+nj;
                        end
               end
                %solve(eval(sprintf('equ%d=k1(%d)+k2(%d)',i,i,i)))
               
                %eval(sprintf('k%d',i)) %solving equation
           end
           end
        end