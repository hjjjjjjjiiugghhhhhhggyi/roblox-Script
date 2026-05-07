-- This script was generated using the MoonVeil Obfuscator v1.4.5 [https://moonveil.cc]

local Fc,Z,Nc,pc,sc,Eb=bit32.bxor,pairs,type,getmetatable
local a_=(select)
local E=(function(...)
    return{[1]={...},[2]=a_('#',...)}
end)
local xa=((function()
    local function yb(Da,ze,ub)
        if ze>ub then
            return
        end
        return Da[ze],yb(Da,ze+1,ub)
    end
    return yb
end)())
local we,ve=(string.gsub),(string.char)
local Na=(function(me)
    me=we(me,'[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]','')
    return(me:gsub('.',function(re_)
        if(re_=='=')then
            return''
        end
        local Ba,Wd='',(('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'):find(re_)-1)
        for ye=6,1,-1 do
            Ba=Ba..(Wd%2^ye-Wd%2^(ye-1)>0 and'1'or'0')
        end
        return Ba
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(dd)
        if(#dd~=8)then
            return''
        end
        local ab=0
        for gb=1,8 do
            ab=ab+(dd:sub(gb,gb)=='1'and 2^(8-gb)or 0)
        end
        return ve(ab)
    end))
end)
local dc,ld,oe,p,nd,Xc,Pd,ee=string.unpack,string.sub,string.byte,bit32 .lshift,bit32 .rshift,bit32 .band,table.concat,{}
local i_=(function(l_)
    local fb=ee[l_]
    if not(fb)then
    else
        return fb
    end
    local uc,Kb,cb,le,d_=p(1,11),p(1,5),1,{},''
    while cb<=#l_ do
        local Oa=oe(l_,cb);
        cb=cb+1
        for pe=62,(8)+61 do
            local sd=nil
            if not(Xc(Oa,1)~=0)then
                if not(cb+1<=#l_)then
                else
                    local Zd=dc('>I2',l_,cb);
                    cb=cb+2
                    local ja,Ua=#d_-nd(Zd,5),Xc(Zd,(Kb-1))+3;
                    sd=ld(d_,ja,ja+Ua-1)
                end
            else
                if not(cb<=#l_)then
                else
                    sd=ld(l_,cb,cb);
                    cb=cb+1
                end
            end
            Oa=nd(Oa,1)
            if sd then
                le[#le+1]=sd;
                d_=ld(d_..sd,-uc)
            end
        end
    end
    local qd=Pd(le);
    ee[l_]=qd
    return qd
end)
local ca=(function()
    local lb,Wc,X,Fd,_b,Jc,la,ed,yd,Mc,t_,Fb=bit32 .bxor,bit32 .band,bit32 .bor,bit32 .lshift,bit32 .rshift,string.sub,string.pack,string.unpack,string.rep,table.pack,table.unpack,table.insert
    local function Qb(ue,Ma,qc,he,hb)
        local ge,bc,rc,oc=ue[Ma],ue[qc],ue[he],ue[hb]
        local D;
        ge=Wc(ge+bc,4294967295);
        D=lb(oc,ge);
        oc=Wc(X(Fd(D,16),_b(D,16)),4294967295);
        rc=Wc(rc+oc,4294967295);
        D=lb(bc,rc);
        bc=Wc(X(Fd(D,12),_b(D,20)),4294967295);
        ge=Wc(ge+bc,4294967295);
        D=lb(oc,ge);
        oc=Wc(X(Fd(D,8),_b(D,24)),4294967295);
        rc=Wc(rc+oc,4294967295);
        D=lb(bc,rc);
        bc=Wc(X(Fd(D,7),_b(D,25)),4294967295);
        ue[Ma],ue[qc],ue[he],ue[hb]=ge,bc,rc,oc
        return ue
    end
    local N,Ke={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
    local Qa=function(Yd,s_,tc)
        N[1],N[2],N[3],N[4]=2238798990,1485946545,762013373,1466485016
        for _a=80,(8)+79 do
            N[(_a-79)+4]=Yd[(_a-79)]
        end
        N[13]=s_
        for Ae=70,(3)+69 do
            N[(Ae-69)+13]=tc[(Ae-69)]
        end
        for jb=200,(16)+199 do
            Ke[(jb-199)]=N[(jb-199)]
        end
        for Wa=99,(10)+98 do
            Qb(Ke,1,5,9,13);
            Qb(Ke,2,6,10,14);
            Qb(Ke,3,7,11,15);
            Qb(Ke,4,8,12,16);
            Qb(Ke,1,6,11,16);
            Qb(Ke,2,7,12,13);
            Qb(Ke,3,8,9,14);
            Qb(Ke,4,5,10,15)
        end
        for Ed=102,(16)+101 do
            N[(Ed-101)]=Wc(N[(Ed-101)]+Ke[(Ed-101)],4294967295)
        end
        return N
    end
    local function fd(W,Cc,Dd,Pa,Ie)
        local kd=#Pa-Ie+1
        if not(kd<64)then
        else
            local K=Jc(Pa,Ie);
            Pa=K..yd('\0',64-kd);
            Ie=1
        end
        assert(#Pa>=64)
        local Cb,S=Mc(ed('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',Pa,Ie)),Qa(W,Cc,Dd)
        for Va=162,(16)+161 do
            Cb[(Va-161)]=lb(Cb[(Va-161)],S[(Va-161)])
        end
        local xe=la('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',t_(Cb))
        if not(kd<64)then
        else
            xe=Jc(xe,1,kd)
        end
        return xe
    end
    local function jc(bb)
        local Ad=''
        for Xa=14,(#bb)+13 do
            Ad=Ad..bb[(Xa-13)]
        end
        return Ad
    end
    local function Wb(wa,h,td,Ic)
        local Xb,fe,ce,na=Mc(ed('<I4I4I4I4I4I4I4I4',wa)),Mc(ed('<I4I4I4',td)),{},1
        while na<=#Ic do
            Fb(ce,fd(Xb,h,fe,Ic,na));
            na=na+64;
            h=h+1
        end
        return jc(ce)
    end
    return function(Ac,cd,ma)
        return Wb(ma,0,cd,Ac)
    end
end)()
local Vd=(function()
    local Kd,b_,U,Tc,Hb,qb,ne,_d,Pb,zd,Sd=bit32 .bnot,bit32 .bxor,bit32 .rshift,bit32 .lshift,bit32 .band,bit32 .bor,table.insert,table.unpack,string.rep,string.char,string.byte
    local function Yc(ic,ud)
        local ia,od=U(ic,ud),Tc(ic,32-ud)
        return Hb(qb(ia,od),4294967295)
    end
    local Sa=function(Qc)
        local xc={1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298}
        local function y(de)
            local Ee=#de
            local pd=Ee*8;
            de=de..'\128'
            local Rb=64-((Ee+9)%64)
            if not(Rb~=64)then
            else
                de=de..Pb('\0',Rb)
            end
            de=de..zd(Hb(U(pd,56),255),Hb(U(pd,48),255),Hb(U(pd,40),255),Hb(U(pd,32),255),Hb(U(pd,24),255),Hb(U(pd,16),255),Hb(U(pd,8),255),Hb(pd,255))
            return de
        end
        local function hc(c)
            local Sc={}
            for ac=186,(#c)+185,64 do
                ne(Sc,c:sub((ac-185),(ac-185)+63))
            end
            return Sc
        end
        local function je(za,id)
            local ka={}
            for Id=231,(64)+230 do
                if not((Id-230)<=16)then
                    local Jd,u_=b_(Yc(ka[(Id-230)-15],7),Yc(ka[(Id-230)-15],18),U(ka[(Id-230)-15],3)),b_(Yc(ka[(Id-230)-2],17),Yc(ka[(Id-230)-2],19),U(ka[(Id-230)-2],10));
                    ka[(Id-230)]=Hb(ka[(Id-230)-16]+Jd+ka[(Id-230)-7]+u_,4294967295)
                else
                    ka[(Id-230)]=qb(Tc(Sd(za,((Id-230)-1)*4+1),24),Tc(Sd(za,((Id-230)-1)*4+2),16),Tc(Sd(za,((Id-230)-1)*4+3),8),Sd(za,((Id-230)-1)*4+4))
                end
            end
            local Jb,Y,se_,Ga,md,Q,P,kc=_d(id)
            for O=242,(64)+241 do
                local kb,B=b_(Yc(md,6),Yc(md,11),Yc(md,25)),b_(Hb(md,Q),Hb(Kd(md),P))
                local e_,A,x=Hb(kc+kb+B+xc[(O-241)]+ka[(O-241)],4294967295),b_(Yc(Jb,2),Yc(Jb,13),Yc(Jb,22)),b_(Hb(Jb,Y),Hb(Jb,se_),Hb(Y,se_))
                local Ab=Hb(A+x,4294967295);
                kc=P;
                P=Q;
                Q=md;
                md=Hb(Ga+e_,4294967295);
                Ga=se_;
                se_=Y;
                Y=Jb;
                Jb=Hb(e_+Ab,4294967295)
            end
            return Hb(id[1]+Jb,4294967295),Hb(id[2]+Y,4294967295),Hb(id[3]+se_,4294967295),Hb(id[4]+Ga,4294967295),Hb(id[5]+md,4294967295),Hb(id[6]+Q,4294967295),Hb(id[7]+P,4294967295),Hb(id[8]+kc,4294967295)
        end
        Qc=y(Qc)
        local Ud,Od,oa=hc(Qc),{1779033703,3144134277,1013904242,2773480762,1359893119,2600822924,528734635,1541459225},''
        for rd,Vc in ipairs(Ud)do
            Od={je(Vc,Od)}
        end
        for gc,db in ipairs(Od)do
            oa=oa..zd(Hb(U(db,24),255));
            oa=oa..zd(Hb(U(db,16),255));
            oa=oa..zd(Hb(U(db,8),255));
            oa=oa..zd(Hb(db,255))
        end
        return oa
    end
    return Sa
end)()
local fc,zc,Ja,Vb,Je,ke,Ha,V,Za,fa_,Qd,ae,Uc,Hc,be,Ia,Ib,vd,z,bd,Gb,sb,ua,Ce,q,pb,R,mb,I,Kc=type,pcall,error,tonumber,assert,select,setmetatable,string.format,string.unpack,string.sub,string.byte,string.char,table.move,table.pack,table.create,table.insert,table.concat,coroutine.create,coroutine.yield,coroutine.resume,coroutine.close,getfenv,bit32 .bor,bit32 .bxor,bit32 .band,bit32 .btest,bit32 .rshift,bit32 .lshift,bit32 .extract,{[59847]={},[24963]={},[62551]={{9,3,true},{7,2,true},{7,6,true},{10,4,false},{1,8,false},{4,3,false},{7,1,true},{3,7,true},{4,0,false},{4,8,true},{7,7,true},{3,1,false},{7,6,true},{7,8,false},{1,2,false},{9,3,false},{7,2,false},{10,8,false},{7,9,false},{1,3,true},{9,2,true},{10,4,true},{7,2,false},{3,0,true},{3,2,false},{9,4,true},{9,1,false},{7,9,true},{3,2,false},{3,3,true},{7,2,true},{9,7,true},{10,2,false},{3,6,true},{10,8,true},{7,8,true},{4,2,true},{7,2,true},{7,4,true},{3,2,false},{10,9,false},{3,1,true},{9,4,true},{7,2,false},{4,8,false},{10,9,true},{1,4,false},{3,9,true},{3,7,false},{7,7,false},{3,8,true},{1,7,true},{3,7,false},{3,7,true},{7,2,true},{3,2,false},{4,2,true},{7,9,true},{9,4,true},{3,2,false},{3,2,false},{1,8,false},{7,2,false},{3,8,false},{3,8,false},{3,2,false},{10,2,false},{3,1,false},{3,2,false},{7,6,true},{1,6,false},{1,7,false},{1,0,true},{7,4,false},{3,2,false},{4,9,true},{3,8,true},{3,2,false},{4,9,true},{3,9,true},{1,9,true},{7,2,false},{7,2,false},{4,9,true},{7,9,true},{7,2,true},{3,1,false},{3,2,false},{7,4,false},{3,6,false},{1,6,true},{9,9,false},{3,0,false},{1,0,false},{7,6,true},{3,8,true},{7,2,true},{9,6,false},{4,7,true},{1,6,false},{3,7,false},{7,4,true},{3,2,false},{10,4,false},{1,8,false},{10,1,false},{7,0,true},{3,8,false},{7,4,false},{3,2,false},{4,2,true},{3,2,false},{3,8,true},{7,9,false},{1,8,false},{7,2,false},{3,8,true},{9,9,true},{7,0,true},{9,3,true},{7,9,false},{4,3,false},{7,4,false},{4,3,false},{3,5,false},{7,2,true},{3,5,false},{7,9,false},{9,4,true},{3,2,false},{9,0,false},{7,0,true},{3,4,false},{9,1,false},{7,8,false},{3,2,false},{7,6,false},{1,2,true},{9,6,false},{4,8,false},{3,2,false},{7,9,false},{1,9,true},{7,6,true},{9,2,false},{3,8,false},{3,2,false},{1,9,true},{3,1,false},{10,6,false},{9,1,true},{10,7,true},{7,9,true},{3,6,false},{4,2,false},{7,7,true},{7,3,true},{3,5,false},{1,2,true},{9,3,false},{7,6,false},{10,6,false},{4,2,true},{3,2,false},{4,2,false},{3,7,false},{3,0,false},{4,2,false},{7,8,true},{7,2,false},{10,8,false},{3,2,false},{9,2,false},{3,3,true},{4,1,true},{3,8,true},{9,4,true},{3,2,false},{3,2,true},{3,0,true},{1,3,true},{7,2,false},{7,0,true},{3,8,true},{3,9,true},{9,1,true},{1,2,true},{10,7,false},{3,2,false},{9,1,false},{10,0,false},{3,4,false},{1,1,false},{3,9,false},{7,2,false},{4,0,true},{9,9,true},{3,2,false},{7,2,false},{9,3,true},{7,8,true},{4,4,false},{3,2,false},{1,7,false},{3,8,true},{10,1,false},{3,2,true},{3,2,true},{10,4,false},{4,3,false},{9,8,false},{4,4,false},{3,2,false},{1,3,false},{3,2,false},{7,2,true},{3,2,false},{10,0,false},{7,3,true},{4,0,true},{7,4,false},{4,1,false},{10,1,false},{3,7,false},{3,2,false},{9,10,false},{4,4,true},{3,2,false},{3,0,false},{7,3,true},{1,0,false},{7,2,false},{7,2,false},{7,2,true},{3,2,true},{7,3,false},{3,2,false},{3,5,false},{3,8,true},{1,7,true},{7,4,false},{4,6,true},{3,2,false},{7,4,false},{3,2,false},{10,9,true},{10,6,true},{1,6,true},{7,3,false},{7,9,false},{1,2,true},{9,8,true},{9,8,false},{7,8,false},{9,2,false},{1,0,false}}}
local Lb=(function(zb)
    local Bb=Kc[24963][zb]
    if Bb then
        return Bb
    end
    local Ca=1
    local function Rc()
        local Md,o_,te,Rd,ob,Ea,Ld,mc,yc,va,eb,cc,v,vc,n_,Lc,wc,Ta,Db,xb,J,Be,Mb,T,F,xd,f_,Ge,He,qe,Ob,Gc;
        xd,F=function(j,Pc,aa)
            F[j]=Fc(Pc,63744)-Fc(aa,57805)
            return F[j]
        end,{};
        Ob=F[-17734]or xd(-17734,130576,6588)
        while Ob~=42727 do
            if Ob>=34499 then
                if Ob<=50701 then
                    if Ob>40909 then
                        if Ob>46361 then
                            if Ob<=49439 then
                                if Ob>=49428 then
                                    if Ob>49428 then
                                        Mb=Ge;
                                        xb=be(Mb);
                                        Ob,n_,Lc,mc=29292,1,207,(Mb)+206
                                    else
                                        Ob,Rd[12099]=F[-24440]or xd(-24440,120972,24690),xb[Rd[13138]+1]
                                    end
                                elseif Ob>46897 then
                                    qe=Za('c'..Ea,zb,Ca);
                                    Ca,Ob=Ca+Ea,F[-23438]or xd(-23438,1233,25956)
                                else
                                    if(te>=0 and wc>Rd)or((te<0 or te~=te)and wc<Rd)then
                                        Ob=3478
                                    else
                                        Ob=F[-25137]or xd(-25137,628,5974)
                                    end
                                end
                            elseif Ob>50565 then
                                Ob,yc=F[-34]or xd(-34,41921,51551),{}
                            elseif Ob>50249 then
                                Rd=Za('B',zb,Ca);
                                Ob,Ca=F[31298]or xd(31298,116677,28920),Ca+1
                            else
                                te=Za('B',zb,Ca);
                                Ca,Ob=Ca+1,32950
                            end
                        elseif Ob>44432 then
                            if Ob>45669 then
                                Ea[26658]=q(R(wc,8),255);
                                Db=q(R(wc,16),65535);
                                Ea[50736]=Db;
                                qe=nil;
                                qe=if Db<32768 then Db else Db-65536;
                                Ea[25402],Ob=qe,F[16426]or xd(16426,7384,27504)
                            elseif Ob>44567 then
                                Ob=F[21581]or xd(21581,43206,59579)
                                continue
                            else
                                yc,Ob=nil,F[23954]or xd(23954,119704,6564)
                            end
                        elseif Ob<=43006 then
                            if Ob<42881 then
                                Ob,Be=F[-2844]or xd(-2844,124409,20951),mc
                            elseif Ob>42881 then
                                wc=Lc
                                if mc~=mc then
                                    Ob=F[7126]or xd(7126,6620,46576)
                                else
                                    Ob=F[-11017]or xd(-11017,2893,61530)
                                end
                            else
                                Ob=F[4281]or xd(4281,33814,41015)
                                continue
                            end
                        elseif Ob<=43620 then
                            Mb=cc
                            if Be~=Be then
                                Ob=F[-15205]or xd(-15205,51035,58098)
                            else
                                Ob=36954
                            end
                        else
                            wc,Ob=Ce(Rd,44),2962
                            continue
                        end
                    elseif Ob>=38942 then
                        if Ob>=39722 then
                            if Ob>40575 then
                                Lc=Lc+n_;
                                wc=Lc
                                if Lc~=Lc then
                                    Ob=35999
                                else
                                    Ob=F[7036]or xd(7036,72088,7727)
                                end
                            elseif Ob>40091 then
                                if te==10 then
                                    Ob=F[1739]or xd(1739,118639,38038)
                                    continue
                                elseif te==9 then
                                    Ob=F[8483]or xd(8483,17369,18748)
                                    continue
                                end
                                Ob=F[25343]or xd(25343,111936,19902)
                            elseif Ob>39722 then
                                Ta=Za('B',zb,Ca);
                                Ob,Ca=35467,Ca+1
                            else
                                qe=Db;
                                Ea[1706]=qe;
                                Ia(cc,{});
                                Ob=F[16756]or xd(16756,108385,37017)
                            end
                        elseif Ob<39258 then
                            if Ob>38942 then
                                J=Db
                                if qe~=qe then
                                    Ob=F[14255]or xd(14255,118138,13350)
                                else
                                    Ob=F[12571]or xd(12571,107572,49072)
                                end
                            else
                                Gc,Ob=Ce(eb,44),F[9586]or xd(9586,102881,35356)
                                continue
                            end
                        elseif Ob>39258 then
                            yc,Ob=Ce(va,44),65006
                            continue
                        else
                            if te==1 then
                                Ob=F[11518]or xd(11518,15937,57593)
                                continue
                            elseif te==0 then
                                Ob=F[22045]or xd(22045,107515,3967)
                                continue
                            end
                            Ob=F[20378]or xd(20378,37686,55754)
                        end
                    elseif Ob>=35999 then
                        if Ob<=37834 then
                            if Ob<36954 then
                                Ob,Lc=52962,nil
                            elseif Ob>36954 then
                                Ta=He;
                                Ea=ua(Ea,mb(q(Ta,127),(J-59)*7))
                                if not pb(Ta,128)then
                                    Ob=F[-21003]or xd(-21003,49378,51231)
                                    continue
                                end
                                Ob=F[-6563]or xd(-6563,123218,26083)
                            else
                                if(Ge>=0 and cc>Be)or((Ge<0 or Ge~=Ge)and cc<Be)then
                                    Ob=F[2334]or xd(2334,519,24102)
                                else
                                    Ob=F[-24882]or xd(-24882,117654,45249)
                                end
                            end
                        else
                            Db=Db+Md;
                            J=Db
                            if Db~=Db then
                                Ob=F[-24163]or xd(-24163,24536,43396)
                            else
                                Ob=65207
                            end
                        end
                    elseif Ob<=35467 then
                        if Ob>=35242 then
                            if Ob>35242 then
                                Ob,He=F[-19504]or xd(-19504,8680,42195),Ce(Ta,44)
                                continue
                            else
                                Lc=xb;
                                v=ua(v,mb(q(Lc,127),(Mb-104)*7))
                                if not pb(Lc,128)then
                                    Ob=F[-8319]or xd(-8319,127434,32900)
                                    continue
                                end
                                Ob=F[-31488]or xd(-31488,118196,3971)
                            end
                        else
                            Ob,wc=50565,nil
                        end
                    else
                        qe=Za('<I4',zb,Ca);
                        Ob,Ca=29235,Ca+4
                    end
                elseif Ob<=58222 then
                    if Ob>=55574 then
                        if Ob>=57526 then
                            if Ob<57738 then
                                if Ob>57526 then
                                    wc=n_;
                                    Rd=q(wc,255);
                                    te=Kc[62551][Rd+1];
                                    yc,va,ob=te[1],te[2],te[3];
                                    Ea={[19802]=0,[35681]=nil,[38824]=0,[12099]=0,[42099]=va,[1706]=0,[12431]=Rd,[26658]=0,[47197]=0,[25301]=0,[50736]=0,[25402]=0,[13055]=0,[13138]=0,[13446]=0};
                                    Ia(cc,Ea)
                                    if(yc==3)then
                                        Ob=F[19588]or xd(19588,15241,28973)
                                        continue
                                    else
                                        Ob=F[-7661]or xd(-7661,3811,64484)
                                        continue
                                    end
                                    Ob=23323
                                else
                                    if(n_>=0 and Lc>mc)or((n_<0 or n_~=n_)and Lc<mc)then
                                        Ob=35999
                                    else
                                        Ob=F[-23503]or xd(-23503,128631,24148)
                                    end
                                end
                            elseif Ob<=57738 then
                                xb,Ob=nil,64969
                            else
                                vc,Ob=Ce(T,44),F[18979]or xd(18979,107428,34172)
                                continue
                            end
                        elseif Ob>56762 then
                            Lc=Lc+n_;
                            wc=Lc
                            if Lc~=Lc then
                                Ob=F[-15429]or xd(-15429,40921,44684)
                            else
                                Ob=F[-22813]or xd(-22813,101225,39046)
                            end
                        elseif Ob>56612 then
                            if yc==7 then
                                Ob=F[62]or xd(62,97674,11964)
                                continue
                            elseif yc==9 then
                                Ob=F[32275]or xd(32275,77059,3467)
                                continue
                            end
                            Ob=F[22401]or xd(22401,8756,25044)
                        elseif Ob>55574 then
                            va,Ob=E'',F[2731]or xd(2731,130920,60256)
                            continue
                        else
                            if(mc>=0 and xb>Lc)or((mc<0 or mc~=mc)and xb<Lc)then
                                Ob=F[-28820]or xd(-28820,12487,33435)
                            else
                                Ob=34499
                            end
                        end
                    elseif Ob<=52513 then
                        if Ob<=52197 then
                            if Ob<51990 then
                                yc=Rd[1706];
                                va,ob=R(yc,30),q(R(yc,20),1023);
                                Rd[12099]=xb[ob+1];
                                Rd[38824]=va
                                if va==2 then
                                    Ob=F[23625]or xd(23625,24482,51957)
                                    continue
                                elseif(va==3)then
                                    Ob=F[-31110]or xd(-31110,18932,18499)
                                    continue
                                else
                                    Ob=F[-16312]or xd(-16312,14094,53132)
                                    continue
                                end
                                Ob=F[-28269]or xd(-28269,123350,39108)
                            elseif Ob<=51990 then
                                Ge,Ob=nil,F[32711]or xd(32711,110719,37984)
                            else
                                mc=Lc;
                                n_=be(mc);
                                Ob,te,wc,Rd=F[1858]or xd(1858,11551,12943),1,94,(mc)+93
                            end
                        else
                            Ea=ob
                            if(Ea==0)then
                                Ob=F[-27308]or xd(-27308,88143,9702)
                                continue
                            else
                                Ob=F[10585]or xd(10585,41646,47859)
                                continue
                            end
                            Ob=F[9875]or xd(9875,76480,14146)
                        end
                    elseif Ob<54226 then
                        mc=0;
                        wc,n_,Ob,Rd=68,64,F[10728]or xd(10728,119449,4288),1
                    elseif Ob>54226 then
                        Ob,n_=57660,Ce(wc,-421929810)
                        continue
                    else
                        Mb=0;
                        Lc,mc,xb,Ob=35,1,31,9121
                    end
                elseif Ob<64443 then
                    if Ob>=60369 then
                        if Ob<62963 then
                            if Ob>60369 then
                                Ob,mc=41413,ob
                                continue
                            else
                                wc=Za('<I4',zb,Ca);
                                Ob,Ca=F[2033]or xd(2033,4986,63465),Ca+4
                            end
                        elseif Ob<=62963 then
                            Ob,T,Gc=18952,vc,nil
                        else
                            if(n_>=0 and Lc>mc)or((n_<0 or n_~=n_)and Lc<mc)then
                                Ob=F[6801]or xd(6801,44515,56454)
                            else
                                Ob=5407
                            end
                        end
                    elseif Ob<=59325 then
                        if Ob<=58692 then
                            Rd[12099],Ob=xb[Rd[1706]+1],F[17404]or xd(17404,93927,6615)
                        else
                            Db,qe=q(R(wc,8),16777215),nil;
                            qe=if Db<8388608 then Db else Db-16777216;
                            Ob,Ea[13138]=F[20691]or xd(20691,32819,65493),qe
                        end
                    else
                        if(te==6)then
                            Ob=F[-4382]or xd(-4382,108929,2981)
                            continue
                        else
                            Ob=F[-24051]or xd(-24051,122724,27847)
                            continue
                        end
                        Ob=F[-19053]or xd(-19053,2060,24336)
                    end
                elseif Ob<64969 then
                    if Ob<=64784 then
                        if Ob<=64443 then
                            yc,Ob=xa(va[1],1,va[2]),F[25828]or xd(25828,40032,54012)
                        else
                            eb,Ob,f_=Gc,F[-4621]or xd(-4621,90,29536),nil
                        end
                    else
                        Ob,ob=F[6851]or xd(6851,122109,5563),nil
                    end
                elseif Ob>65207 then
                    o_,Ob=Ce(Ld,44),F[3566]or xd(3566,13245,48090)
                    continue
                elseif Ob<65006 then
                    Lc=Za('B',zb,Ca);
                    Ca,Ob=Ca+1,15527
                elseif Ob<=65006 then
                    va=yc;
                    mc=ua(mc,mb(q(va,127),(te-64)*7))
                    if not pb(va,128)then
                        Ob=F[-30663]or xd(-30663,17352,59822)
                        continue
                    end
                    Ob=F[-28069]or xd(-28069,120719,828)
                else
                    if(Md>=0 and Db>qe)or((Md<0 or Md~=Md)and Db<qe)then
                        Ob=F[-21756]or xd(-21756,748,31888)
                    else
                        Ob=2656
                    end
                end
            elseif Ob>=18512 then
                if Ob>27721 then
                    if Ob<=31123 then
                        if Ob<29292 then
                            if Ob<28838 then
                                if Ob<=27836 then
                                    Ob,mc=F[-2111]or xd(-2111,118063,4855),nil
                                else
                                    Ge=Ge+xb;
                                    Lc=Ge
                                    if Ge~=Ge then
                                        Ob=51990
                                    else
                                        Ob=21471
                                    end
                                end
                            elseif Ob>28838 then
                                Ob,Db=39722,Ce(qe,-421929810)
                                continue
                            else
                                Ld,vc,Ob=o_,nil,1499
                            end
                        elseif Ob<=31016 then
                            if Ob>30339 then
                                Ob,Db=F[-24514]or xd(-24514,27952,56575),qe
                                continue
                            elseif Ob<=29292 then
                                wc=Lc
                                if mc~=mc then
                                    Ob=6040
                                else
                                    Ob=63774
                                end
                            else
                                Lc=Ge
                                if Mb~=Mb then
                                    Ob=F[25810]or xd(25810,107681,29510)
                                else
                                    Ob=21471
                                end
                            end
                        else
                            yc,Ob=nil,F[-15338]or xd(-15338,41934,60264)
                        end
                    elseif Ob>=32950 then
                        if Ob<33686 then
                            Ob,Rd=F[-12062]or xd(-12062,54091,62232),Ce(te,44)
                            continue
                        elseif Ob<=33686 then
                            ob=Za('<d',zb,Ca);
                            Ca,Ob=Ca+8,F[-16285]or xd(-16285,16679,32378)
                        else
                            Ob,Db=F[19969]or xd(19969,124922,30081),nil
                        end
                    elseif Ob>31594 then
                        Ob,Rd[12099]=F[-17076]or xd(-17076,8066,42872),xb[Rd[25402]+1]
                    elseif Ob>31534 then
                        Ea=q(R(yc,10),1023);
                        Ob,Rd[13446]=F[-5002]or xd(-5002,17117,64989),xb[Ea+1]
                    else
                        if(Rd>=0 and n_>wc)or((Rd<0 or Rd~=Rd)and n_<wc)then
                            Ob=F[3724]or xd(3724,27431,43034)
                        else
                            Ob=F[-16549]or xd(-16549,115751,8793)
                        end
                    end
                elseif Ob<21471 then
                    if Ob>=20170 then
                        if Ob>20521 then
                            v=f_;
                            cc,Be=be(v),false;
                            Ob,xb,Ge,Mb=30339,1,55,(v)+54
                        elseif Ob>20446 then
                            va=Za('B',zb,Ca);
                            Ob,Ca=39380,Ca+1
                        elseif Ob>20170 then
                            Rd=cc[(wc-63)];
                            te=Rd[42099]
                            if te==8 then
                                Ob=F[-6390]or xd(-6390,117882,45563)
                                continue
                            elseif te==4 then
                                Ob=F[-30360]or xd(-30360,99367,7212)
                                continue
                            elseif(te==3)then
                                Ob=F[-13282]or xd(-13282,119199,32904)
                                continue
                            else
                                Ob=F[21081]or xd(21081,117063,28677)
                                continue
                            end
                            Ob=F[18692]or xd(18692,99189,15205)
                        else
                            xb=xb+mc;
                            n_=xb
                            if xb~=xb then
                                Ob=F[23094]or xd(23094,110658,796)
                            else
                                Ob=55574
                            end
                        end
                    elseif Ob<=19358 then
                        if Ob<=18952 then
                            if Ob>18512 then
                                eb=Za('B',zb,Ca);
                                Ca,Ob=Ca+1,F[25549]or xd(25549,20781,61890)
                            else
                                Lc,Ob=Ce(mc,-929128915),F[-8699]or xd(-8699,105906,30976)
                                continue
                            end
                        else
                            n_=n_+Rd;
                            te=n_
                            if n_~=n_ then
                                Ob=F[26936]or xd(26936,26833,43084)
                            else
                                Ob=F[1183]or xd(1183,4642,36409)
                            end
                        end
                    else
                        Ob=F[-10372]or xd(-10372,13020,33958)
                        continue
                    end
                elseif Ob<26137 then
                    if Ob<23323 then
                        if Ob>21471 then
                            Ob,va=F[19555]or xd(19555,99672,24912),E(Db)
                            continue
                        else
                            if(xb>=0 and Ge>Mb)or((xb<0 or xb~=xb)and Ge<Mb)then
                                Ob=F[4914]or xd(4914,121728,46759)
                            else
                                Ob=F[18868]or xd(18868,19866,20934)
                            end
                        end
                    elseif Ob>23323 then
                        ob,Ob=Ce(Ea,-929128915),F[-24938]or xd(-24938,80261,4777)
                        continue
                    else
                        if ob then
                            Ob=F[-20538]or xd(-20538,24302,49750)
                            continue
                        end
                        Ob=F[-6739]or xd(-6739,1762,62232)
                    end
                elseif Ob<=26285 then
                    if Ob>26225 then
                        v=0;
                        cc,Be,Ob,Ge=104,108,F[24982]or xd(24982,113683,31586),1
                    elseif Ob<=26137 then
                        va,Ob=E(nil),64817
                    else
                        Ob,Ge=49439,Ce(Mb,-929128915)
                        continue
                    end
                else
                    va,Ob=nil,F[12992]or xd(12992,5636,35491)
                end
            elseif Ob<=6040 then
                if Ob>=2962 then
                    if Ob<=4584 then
                        if Ob<3743 then
                            if Ob>2962 then
                                return{[49172]=n_,[60574]=T,[32349]='',[27624]=eb,[55305]=cc,[8801]=Ld}
                            else
                                Rd=wc;
                                Mb=ua(Mb,mb(q(Rd,127),(n_-31)*7))
                                if not pb(Rd,128)then
                                    Ob=F[18838]or xd(18838,27231,42151)
                                    continue
                                end
                                Ob=F[19680]or xd(19680,3420,17503)
                            end
                        elseif Ob<4112 then
                            o_,Ob=nil,13967
                        elseif Ob<=4112 then
                            Ob=F[-29277]or xd(-29277,36669,63075)
                            continue
                        else
                            Rd[12099]=xb[I(Rd[1706],0,24)+1];
                            Ob,Rd[19802]=F[27860]or xd(27860,100247,16135),I(Rd[1706],31,1)==1
                        end
                    elseif Ob<=6006 then
                        if Ob<=5407 then
                            Rd,Ob=nil,50249
                        else
                            te=Rd
                            if(te==5)then
                                Ob=F[-32151]or xd(-32151,2918,42370)
                                continue
                            else
                                Ob=F[-348]or xd(-348,2617,58928)
                                continue
                            end
                            Ob=12847
                        end
                    else
                        n_,mc,Ob,Lc=1,(v)+63,43006,64
                    end
                elseif Ob<1241 then
                    if Ob>=221 then
                        if Ob<=221 then
                            yc=wc
                            if Rd~=Rd then
                                Ob=F[-27609]or xd(-27609,9417,12798)
                            else
                                Ob=F[-1124]or xd(-1124,13884,63942)
                            end
                        else
                            if(Be)then
                                Ob=F[2730]or xd(2730,7424,16682)
                                continue
                            else
                                Ob=F[-17364]or xd(-17364,125863,17446)
                                continue
                            end
                            Ob=F[27987]or xd(27987,106804,2712)
                        end
                    else
                        Db,Ob=nil,47518
                    end
                elseif Ob<1894 then
                    if Ob<=1241 then
                        n_[(yc-93)],Ob=Rc(),F[-7114]or xd(-7114,38586,42301)
                    else
                        T=Za('B',zb,Ca);
                        Ob,Ca=58222,Ca+1
                    end
                elseif Ob<=1894 then
                    Ea,Db=q(R(yc,10),1023),q(R(yc,0),1023);
                    Rd[13446]=xb[Ea+1];
                    Ob,Rd[47197]=F[-32564]or xd(-32564,4813,44493),xb[Db+1]
                else
                    He,Ob=nil,F[-9546]or xd(-9546,8559,55833)
                end
            elseif Ob>13967 then
                if Ob>16629 then
                    if Ob>17177 then
                        cc=cc+Ge;
                        Mb=cc
                        if cc~=cc then
                            Ob=F[4395]or xd(4395,20515,36810)
                        else
                            Ob=36954
                        end
                    else
                        Ob,Be=F[5968]or xd(5968,102657,6895),false
                    end
                elseif Ob>15527 then
                    n_,Ob=nil,F[-28418]or xd(-28418,120070,41464)
                elseif Ob>15132 then
                    xb,Ob=Ce(Lc,44),35242
                    continue
                elseif Ob<=14988 then
                    te=n_
                    if wc~=wc then
                        Ob=F[-26309]or xd(-26309,43799,59402)
                    else
                        Ob=F[-28999]or xd(-28999,23093,51658)
                    end
                else
                    Ob,f_=F[26093]or xd(26093,26098,43921),Ce(v,-929128915)
                    continue
                end
            elseif Ob>=12679 then
                if Ob>=12847 then
                    if Ob>12847 then
                        Ld=Za('B',zb,Ca);
                        Ca,Ob=Ca+1,65251
                    else
                        xb[(wc-206)],Ob=yc,F[4507]or xd(4507,1365,64895)
                    end
                elseif Ob>12679 then
                    Ea[26658]=q(R(wc,8),255);
                    Ea[13055]=q(R(wc,16),255);
                    Ea[25301],Ob=q(R(wc,24),255),F[-9018]or xd(-9018,8250,40914)
                else
                    Ea=0;
                    Ob,Db,Md,qe=F[-23051]or xd(-23051,16593,49332),59,1,63
                end
            elseif Ob>=10954 then
                if Ob<=10954 then
                    wc=wc+te;
                    yc=wc
                    if wc~=wc then
                        Ob=3478
                    else
                        Ob=F[26524]or xd(26524,112518,30360)
                    end
                else
                    Ob,yc=F[-8675]or xd(-8675,5434,23494),va
                end
            elseif Ob<=6256 then
                Ob,va=F[-3465]or xd(-3465,5884,24442),ob
                continue
            else
                n_=xb
                if Lc~=Lc then
                    Ob=F[-13269]or xd(-13269,114187,343)
                else
                    Ob=F[-32633]or xd(-32633,91294,9541)
                end
            end
        end
    end
    local ie=Rc();
    Kc[24963][zb]=ie
    return ie
end)
local wb=(function(hd,vb)
    hd=Lb(hd)
    local Ya=sb()
    local function Ka(pa,da)
        local nb=(function(...)
            return{...},ke('#',...)
        end)
        local Xd;
        Xd=(function(L,Nd,k)
            if Nd>k then
                return
            end
            return L[Nd],Xd(L,Nd+1,k)
        end)
        local function w_(G,jd,g,qa)
            local Nb,Ub,wd,tb,_c,Aa,H,Zb,Oc,ba,ad,ib,rb,gd,nc,Tb,Bc,La,M,De,Ec,r_,ea,Cd;
            Bc,gd={},function(sa,ra,Zc)
                Bc[sa]=Fc(ra,43107)-Fc(Zc,35157)
                return Bc[sa]
            end;
            H=Bc[-4418]or gd(-4418,128108,24090)
            repeat
                if H<35941 then
                    if H<=20721 then
                        if H>=10787 then
                            if H>15919 then
                                if H>=18391 then
                                    if H>=19205 then
                                        if H>19844 then
                                            H,G[Nb[26658]]=Bc[820]or gd(820,11330,46055),Nb[12099]
                                        elseif H>19205 then
                                            Ub=La
                                            if Cd~=Cd then
                                                H=Bc[-32551]or gd(-32551,23876,36624)
                                            else
                                                H=28774
                                            end
                                        else
                                            Aa..=G[La];
                                            H=Bc[-18320]or gd(-18320,30027,36502)
                                        end
                                    elseif H<=18391 then
                                        Tb,nc,Aa=Z(Tb);
                                        H=Bc[-27507]or gd(-27507,109756,3423)
                                    else
                                        if(not Ec)then
                                            H=Bc[20799]or gd(20799,100847,44939)
                                            continue
                                        else
                                            H=Bc[22994]or gd(22994,11417,38446)
                                            continue
                                        end
                                        H=25983
                                    end
                                elseif H>16620 then
                                    if H<=16692 then
                                        if ba>73 then
                                            H=Bc[-12384]or gd(-12384,106300,49799)
                                            continue
                                        else
                                            H=Bc[-10246]or gd(-10246,71499,30936)
                                            continue
                                        end
                                        H=Bc[32628]or gd(32628,19160,4121)
                                    else
                                        H,G[Nb[26658]]=Bc[31606]or gd(31606,119220,12218),nc[Nb[13446]]
                                    end
                                elseif H>16271 then
                                    G[Nb[25301]]=Nb[26658]==1;
                                    M+=Nb[13055];
                                    H=Bc[25706]or gd(25706,26255,3112)
                                elseif H>16115 then
                                    Cd=ea
                                    if rb~=rb then
                                        H=Bc[-5304]or gd(-5304,20139,26879)
                                    else
                                        H=25820
                                    end
                                else
                                    ea[2]=ea[1][ea[3]];
                                    ea[1]=ea;
                                    ea[3]=2;
                                    Zb[De],H=nil,Bc[-13367]or gd(-13367,7978,48929)
                                end
                            elseif H<13476 then
                                if H>12840 then
                                    if H>12858 then
                                        ea[2]=ea[1][ea[3]];
                                        ea[1]=ea;
                                        ea[3]=2;
                                        Zb[De],H=nil,Bc[-21484]or gd(-21484,26861,5305)
                                    else
                                        r_={[3]=wd,[1]=G};
                                        Zb[wd],H=r_,Bc[-17808]or gd(-17808,126129,19549)
                                    end
                                elseif H<=12745 then
                                    if H<12533 then
                                        if(ba>225)then
                                            H=Bc[19556]or gd(19556,129879,12865)
                                            continue
                                        else
                                            H=Bc[10970]or gd(10970,101138,63363)
                                            continue
                                        end
                                        H=Bc[15696]or gd(15696,106343,25792)
                                    elseif H<=12533 then
                                        if Nc(Tb)=='table'then
                                            H=Bc[-19913]or gd(-19913,4283,62460)
                                            continue
                                        end
                                        H=Bc[-28241]or gd(-28241,24022,23110)
                                    else
                                        if(ba>74)then
                                            H=Bc[28505]or gd(28505,125474,9762)
                                            continue
                                        else
                                            H=Bc[27075]or gd(27075,121318,20572)
                                            continue
                                        end
                                        H=Bc[-4193]or gd(-4193,105821,25242)
                                    end
                                else
                                    Nb[12431]=20;
                                    M+=1;
                                    H=Bc[11429]or gd(11429,112711,20448)
                                end
                            elseif H>14866 then
                                if H>15269 then
                                    Tb,nc,Aa=Z(Tb);
                                    H=Bc[-20279]or gd(-20279,56757,55905)
                                else
                                    Gb(ea);
                                    H,ad[De]=Bc[-1744]or gd(-1744,12117,62028),nil
                                end
                            elseif H<14690 then
                                if H<=13476 then
                                    if Nb[25301]==1 then
                                        H=Bc[-6906]or gd(-6906,3968,40367)
                                        continue
                                    else
                                        H=Bc[-4326]or gd(-4326,107707,61616)
                                        continue
                                    end
                                    H=Bc[22275]or gd(22275,54934,48339)
                                else
                                    tb,Tb=Nb[26658],Nb[13055];
                                    nc=Tb-1
                                    if nc==-1 then
                                        H=Bc[24088]or gd(24088,15970,37879)
                                        continue
                                    else
                                        H=Bc[-9981]or gd(-9981,80952,11022)
                                        continue
                                    end
                                    H=14690
                                end
                            elseif H>14690 then
                                tb=da[Nb[13055]+1];
                                tb[1][tb[3]],H=G[Nb[26658]],Bc[12275]or gd(12275,98481,22070)
                            else
                                return Xd(G,tb,tb+Aa-1)
                            end
                        elseif H<=5888 then
                            if H>=2093 then
                                if H>3493 then
                                    if H<=4733 then
                                        M-=1;
                                        g[M],H={[12431]=146,[26658]=Ce(Nb[26658],40),[13055]=Ce(Nb[13055],63),[25301]=0},Bc[-15258]or gd(-15258,58108,34917)
                                    else
                                        if(Nb[25301]==70)then
                                            H=Bc[-17851]or gd(-17851,22968,41249)
                                            continue
                                        else
                                            H=Bc[-11788]or gd(-11788,103959,56245)
                                            continue
                                        end
                                        H=Bc[-25634]or gd(-25634,126051,29636)
                                    end
                                elseif H<=3101 then
                                    if H<3070 then
                                        if(ba>175)then
                                            H=Bc[-10794]or gd(-10794,114223,15229)
                                            continue
                                        else
                                            H=Bc[-18631]or gd(-18631,65971,13915)
                                            continue
                                        end
                                        H=Bc[11462]or gd(11462,111052,22805)
                                    elseif H>3070 then
                                        De,ea=Tb(nc,Aa);
                                        Aa=De
                                        if Aa==nil then
                                            H=44829
                                        else
                                            H=Bc[-5759]or gd(-5759,22308,19191)
                                        end
                                    else
                                        M-=1;
                                        g[M],H={[12431]=224,[26658]=Ce(Nb[26658],67),[13055]=Ce(Nb[13055],209),[25301]=0},Bc[2512]or gd(2512,14455,53232)
                                    end
                                else
                                    Ub=g[M];
                                    M+=1;
                                    Oc=Ub[26658]
                                    if Oc==0 then
                                        H=Bc[3839]or gd(3839,53868,41224)
                                        continue
                                    elseif Oc==1 then
                                        H=Bc[28703]or gd(28703,124348,24475)
                                        continue
                                    elseif Oc==2 then
                                        H=Bc[-30790]or gd(-30790,99667,49635)
                                        continue
                                    end
                                    H=Bc[-12947]or gd(-12947,108923,53848)
                                end
                            elseif H>=1158 then
                                if H<1310 then
                                    if(ba>204)then
                                        H=Bc[-24636]or gd(-24636,10184,60637)
                                        continue
                                    else
                                        H=Bc[-15930]or gd(-15930,113862,31116)
                                        continue
                                    end
                                    H=Bc[-26556]or gd(-26556,49697,43398)
                                elseif H<=1310 then
                                    H,Tb=Bc[-85]or gd(-85,108842,40224),De
                                    continue
                                else
                                    if(ba>199)then
                                        H=Bc[-18475]or gd(-18475,11705,52667)
                                        continue
                                    else
                                        H=Bc[-9183]or gd(-9183,127052,10266)
                                        continue
                                    end
                                    H=Bc[-11242]or gd(-11242,29037,1738)
                                end
                            elseif H<1110 then
                                tb,Tb,nc=Nb[12099],Nb[19802],G[Nb[26658]]
                                if((nc==tb)~=Tb)then
                                    H=Bc[31087]or gd(31087,120662,11140)
                                    continue
                                else
                                    H=Bc[7522]or gd(7522,24132,47122)
                                    continue
                                end
                                H=Bc[-14285]or gd(-14285,53386,42543)
                            elseif H<=1110 then
                                De,ea=Tb[13446],Nb[13446];
                                ea='\202,\198\56\213\131\206\128'..ea;
                                rb='';
                                _c,H,La,Cd=1,19844,45,(#De-1)+45
                            else
                                M-=1;
                                g[M],H={[12431]=135,[26658]=Ce(Nb[26658],246),[13055]=Ce(Nb[13055],33),[25301]=0},Bc[9525]or gd(9525,54665,48430)
                            end
                        elseif H>=8356 then
                            if H<9164 then
                                if H<=8356 then
                                    H,La=Bc[-17722]or gd(-17722,49227,39608),La..ae(Ce(Qd(ea,(Oc-71)+1),Qd(rb,(Oc-71)%#rb+1)))
                                else
                                    De,ea=Tb(nc,Aa);
                                    Aa=De
                                    if Aa==nil then
                                        H=Bc[9290]or gd(9290,21158,14339)
                                    else
                                        H=Bc[22840]or gd(22840,110721,50851)
                                    end
                                end
                            elseif H>10424 then
                                nc,Aa=tb[12099],Nb[12099];
                                Aa='\202,\198\56\213\131\206\128'..Aa;
                                De='';
                                ea,H,rb,La=79,Bc[6558]or gd(6558,23860,15517),(#nc-1)+79,1
                            elseif H>9164 then
                                G[Nb[26658]],H=nil,Bc[-20635]or gd(-20635,14570,52815)
                            else
                                if ba>194 then
                                    H=Bc[17160]or gd(17160,127238,9896)
                                    continue
                                else
                                    H=Bc[-29057]or gd(-29057,126868,62215)
                                    continue
                                end
                                H=Bc[16704]or gd(16704,11838,46523)
                            end
                        elseif H<6929 then
                            if H<=6473 then
                                if(Nb[25301]==153)then
                                    H=Bc[-6635]or gd(-6635,23838,24618)
                                    continue
                                else
                                    H=Bc[-23521]or gd(-23521,99742,51951)
                                    continue
                                end
                                H=Bc[12993]or gd(12993,32732,1797)
                            else
                                Tb,nc,Aa=Zb
                                if Nc(Tb)~='function'then
                                    H=Bc[-2572]or gd(-2572,72719,13403)
                                    continue
                                end
                                H=Bc[30838]or gd(30838,112586,29778)
                            end
                        elseif H>=7385 then
                            if H>7385 then
                                tb,Tb=Nb[38824],Nb[12099];
                                nc=Ya[Tb]or Kc[59847][Tb]
                                if(tb==1)then
                                    H=Bc[-15502]or gd(-15502,111882,61151)
                                    continue
                                else
                                    H=Bc[22070]or gd(22070,110943,53152)
                                    continue
                                end
                                H=Bc[-16751]or gd(-16751,122493,10851)
                            else
                                tb=Nb[12099];
                                G[Nb[25301]]=G[Nb[26658]][tb];
                                M+=1;
                                H=Bc[32046]or gd(32046,24502,10035)
                            end
                        else
                            tb=pc(Tb)
                            if tb~=nil and tb.__iter~=nil then
                                H=Bc[6667]or gd(6667,125587,63857)
                                continue
                            elseif(Nc(Tb)=='table')then
                                H=Bc[8923]or gd(8923,102368,22265)
                                continue
                            else
                                H=Bc[-2893]or gd(-2893,106758,453)
                                continue
                            end
                            H=Bc[21606]or gd(21606,6988,47887)
                        end
                    elseif H>27347 then
                        if H<31819 then
                            if H>30170 then
                                if H<31583 then
                                    if H<=30439 then
                                        Tb[47197],H=De,Bc[545]or gd(545,56626,51836)
                                    else
                                        wd=Ub[13055];
                                        r_=Zb[wd]
                                        if(r_==nil)then
                                            H=Bc[27095]or gd(27095,100595,26371)
                                            continue
                                        else
                                            H=Bc[1744]or gd(1744,107928,1892)
                                            continue
                                        end
                                        H=32714
                                    end
                                elseif H<=31583 then
                                    H,Aa=Bc[21944]or gd(21944,31861,5089),ib-tb+1
                                else
                                    if(Nb[25301]==194)then
                                        H=Bc[-10286]or gd(-10286,100540,60588)
                                        continue
                                    else
                                        H=Bc[-20822]or gd(-20822,17857,23550)
                                        continue
                                    end
                                    H=Bc[-24675]or gd(-24675,112418,23687)
                                end
                            elseif H>28774 then
                                if H<=29473 then
                                    M+=Nb[25402];
                                    H=Bc[-10211]or gd(-10211,4611,63908)
                                else
                                    if Nb[25301]==12 then
                                        H=Bc[-27440]or gd(-27440,75893,22764)
                                        continue
                                    elseif(Nb[25301]==161)then
                                        H=Bc[-2677]or gd(-2677,121243,5506)
                                        continue
                                    else
                                        H=Bc[-28885]or gd(-28885,30983,55833)
                                        continue
                                    end
                                    H=Bc[32667]or gd(32667,106289,25782)
                                end
                            elseif H<=28677 then
                                if H<=27468 then
                                    if H>27446 then
                                        De,H=La,Bc[29778]or gd(29778,23409,62846)
                                        continue
                                    else
                                        if tb==3 then
                                            H=Bc[-26080]or gd(-26080,99202,24058)
                                            continue
                                        end
                                        H=Bc[15670]or gd(15670,111490,24812)
                                    end
                                else
                                    M+=Nb[25402];
                                    H=Bc[-1794]or gd(-1794,100033,27750)
                                end
                            else
                                if(_c>=0 and La>Cd)or((_c<0 or _c~=_c)and La<Cd)then
                                    H=Bc[2287]or gd(2287,74147,5003)
                                else
                                    H=64833
                                end
                            end
                        elseif H>=32981 then
                            if H>33984 then
                                if H<=34422 then
                                    Tb,nc,Aa=tb.__iter(Tb);
                                    H=Bc[29241]or gd(29241,18278,17718)
                                else
                                    tb,Tb=nil,Ce(Nb[50736],43626);
                                    tb=if Tb<32768 then Tb else Tb-65536;
                                    nc=tb;
                                    Aa=jd[nc+1];
                                    De=Aa[27624];
                                    ea=be(De);
                                    G[Ce(Nb[26658],159)]=Ka(Aa,ea);
                                    Cd,H,La,rb=1,Bc[-31545]or gd(-31545,76197,19803),(De)+160,161
                                end
                            elseif H>=33966 then
                                if H<=33966 then
                                    M+=Nb[25402];
                                    H=Bc[32079]or gd(32079,49494,38547)
                                else
                                    ib,H,M,Zb,ad,Ec=-1,Bc[6707]or gd(6707,108323,19588),1,Ha({},{__mode='vs'}),Ha({},{__mode='ks'}),false
                                end
                            else
                                De,ea=Tb(nc,Aa);
                                Aa=De
                                if Aa==nil then
                                    H=65349
                                else
                                    H=16115
                                end
                            end
                        elseif H>32227 then
                            if H>32280 then
                                ea[(_c-160)],H=r_,Bc[28905]or gd(28905,4544,39629)
                            else
                                if(Nb[25301]==183)then
                                    H=Bc[26617]or gd(26617,25109,20313)
                                    continue
                                else
                                    H=Bc[-17728]or gd(-17728,64106,40964)
                                    continue
                                end
                                H=Bc[24299]or gd(24299,1490,60695)
                            end
                        elseif H<32067 then
                            if ba>68 then
                                H=Bc[-31308]or gd(-31308,102246,24385)
                                continue
                            else
                                H=Bc[-31899]or gd(-31899,104073,25819)
                                continue
                            end
                            H=Bc[-12619]or gd(-12619,28019,62196)
                        elseif H<=32067 then
                            if(ba>188)then
                                H=Bc[26122]or gd(26122,112468,5084)
                                continue
                            else
                                H=Bc[30268]or gd(30268,1418,47269)
                                continue
                            end
                            H=Bc[-4695]or gd(-4695,53619,42740)
                        else
                            Tb[13446]=Aa;
                            H,De=26434,nil
                        end
                    elseif H>=23735 then
                        if H>=25820 then
                            if H<27089 then
                                if H>25983 then
                                    ea,rb=Tb[47197],Nb[47197];
                                    rb='\202,\198\56\213\131\206\128'..rb;
                                    La='';
                                    Ub,H,Cd,_c=1,Bc[-20951]or gd(-20951,109326,59122),71,(#ea-1)+71
                                elseif H>25820 then
                                    Ec=false;
                                    M+=1
                                    if ba>171 then
                                        H=Bc[-7204]or gd(-7204,32544,23528)
                                        continue
                                    else
                                        H=Bc[9053]or gd(9053,27963,3441)
                                        continue
                                    end
                                    H=Bc[31676]or gd(31676,25221,2082)
                                else
                                    if(La>=0 and ea>rb)or((La<0 or La~=La)and ea<rb)then
                                        H=Bc[18647]or gd(18647,7752,14424)
                                    else
                                        H=52742
                                    end
                                end
                            elseif H<27176 then
                                tb=pc(Tb)
                                if tb~=nil and tb.__iter~=nil then
                                    H=Bc[32583]or gd(32583,74861,10539)
                                    continue
                                elseif(Nc(Tb)=='table')then
                                    H=Bc[-22156]or gd(-22156,130527,2632)
                                    continue
                                else
                                    H=Bc[8497]or gd(8497,50753,60240)
                                    continue
                                end
                                H=Bc[-28089]or gd(-28089,47832,36811)
                            elseif H<=27176 then
                                if(ba>135)then
                                    H=Bc[-25388]or gd(-25388,3782,54371)
                                    continue
                                else
                                    H=Bc[27343]or gd(27343,38039,43774)
                                    continue
                                end
                                H=Bc[-256]or gd(-256,30156,7445)
                            else
                                Tb[13446],H=Aa,Bc[-28334]or gd(-28334,100076,30002)
                            end
                        elseif H>=25049 then
                            if H>=25583 then
                                if H<=25583 then
                                    La=De
                                    if ea~=ea then
                                        H=Bc[-1163]or gd(-1163,52946,33802)
                                    else
                                        H=39433
                                    end
                                else
                                    if(G[Nb[26658]])then
                                        H=Bc[-32357]or gd(-32357,13131,41590)
                                        continue
                                    else
                                        H=Bc[-15661]or gd(-15661,53300,42941)
                                        continue
                                    end
                                    H=Bc[-15070]or gd(-15070,9625,52702)
                                end
                            else
                                Aa=G[tb];
                                H,rb,De,ea=25583,1,tb+1,Tb
                            end
                        elseif H>23735 then
                            tb,Tb=Nb[26658],Nb[13055]-1
                            if(Tb==-1)then
                                H=Bc[-12073]or gd(-12073,75040,26720)
                                continue
                            else
                                H=Bc[24184]or gd(24184,17379,4422)
                                continue
                            end
                            H=Bc[18054]or gd(18054,126423,31506)
                        else
                            if(ba>167)then
                                H=Bc[-20306]or gd(-20306,19848,6486)
                                continue
                            else
                                H=Bc[10971]or gd(10971,26156,60786)
                                continue
                            end
                            H=Bc[-29131]or gd(-29131,17712,10929)
                        end
                    elseif H>=22322 then
                        if H<=22562 then
                            if H<22494 then
                                if H<=22322 then
                                    H,Aa=52680,nil
                                else
                                    Tb,nc,Aa=Zb
                                    if(Nc(Tb)~='function')then
                                        H=Bc[4688]or gd(4688,931,6650)
                                        continue
                                    else
                                        H=Bc[-9736]or gd(-9736,116284,25823)
                                        continue
                                    end
                                    H=Bc[-10432]or gd(-10432,7077,48036)
                                end
                            elseif H<=22494 then
                                tb,Tb=nil,Ce(Nb[50736],20009);
                                tb=if Tb<32768 then Tb else Tb-65536;
                                nc=tb;
                                G[Ce(Nb[26658],63)],H=nc,Bc[19545]or gd(19545,110287,13416)
                            else
                                if(ba>39)then
                                    H=Bc[23995]or gd(23995,112934,428)
                                    continue
                                else
                                    H=Bc[-10661]or gd(-10661,122783,7120)
                                    continue
                                end
                                H=Bc[-1963]or gd(-1963,62020,39405)
                            end
                        elseif H<=22866 then
                            H,G[Nb[25301]]=Bc[15388]or gd(15388,55029,48242),Aa
                        else
                            if ba>27 then
                                H=Bc[13115]or gd(13115,68870,24313)
                                continue
                            else
                                H=Bc[15713]or gd(15713,76489,26565)
                                continue
                            end
                            H=Bc[-24920]or gd(-24920,9954,52295)
                        end
                    elseif H<=21357 then
                        if H>20914 then
                            Uc(qa[25735],1,Tb,tb,G);
                            H=Bc[20541]or gd(20541,31624,809)
                        elseif H<=20828 then
                            if ba>62 then
                                H=Bc[-26462]or gd(-26462,18511,8168)
                                continue
                            else
                                H=Bc[17052]or gd(17052,1595,57187)
                                continue
                            end
                            H=Bc[-6117]or gd(-6117,15416,50105)
                        else
                            wd={[2]=G[Ub[13055]],[3]=2};
                            wd[1]=wd;
                            ea[(_c-160)],H=wd,Bc[-16204]or gd(-16204,113613,58614)
                        end
                    elseif H>21563 then
                        tb,Tb,nc=Ce(Nb[13055],75),Ce(Nb[26658],28),Ce(Nb[25301],125);
                        Aa,De=Tb==0 and ib-tb or Tb-1,G[tb];
                        ea,rb=nb(De(Xd(G,tb+1,tb+Aa)))
                        if(nc==0)then
                            H=Bc[15347]or gd(15347,105679,53809)
                            continue
                        else
                            H=Bc[19742]or gd(19742,79027,10914)
                            continue
                        end
                        H=46907
                    else
                        Cd=Cd+Ub;
                        Oc=Cd
                        if Cd~=Cd then
                            H=Bc[-183]or gd(-183,21676,6358)
                        else
                            H=39365
                        end
                    end
                elseif H<=52680 then
                    if H>44637 then
                        if H>49179 then
                            if H<=51559 then
                                if H>=50912 then
                                    if H<=51436 then
                                        if H<=50912 then
                                            M+=1;
                                            H=Bc[12583]or gd(12583,54679,48592)
                                        else
                                            if(ea[3]>=Nb[26658])then
                                                H=Bc[-22356]or gd(-22356,17604,12583)
                                                continue
                                            else
                                                H=Bc[9324]or gd(9324,2454,62982)
                                                continue
                                            end
                                            H=Bc[19696]or gd(19696,6947,6603)
                                        end
                                    else
                                        M-=1;
                                        g[M],H={[12431]=212,[26658]=Ce(Nb[26658],149),[13055]=Ce(Nb[13055],135),[25301]=0},Bc[-6831]or gd(-6831,106639,13864)
                                    end
                                elseif H>50229 then
                                    M+=1;
                                    H=Bc[24754]or gd(24754,63602,36855)
                                elseif H<=49458 then
                                    M-=1;
                                    H,g[M]=Bc[11743]or gd(11743,28214,62899),{[12431]=74,[26658]=Ce(Nb[26658],35),[13055]=Ce(Nb[13055],164),[25301]=0}
                                else
                                    H,Aa=Bc[-24448]or gd(-24448,9381,293),nil
                                end
                            elseif H>=52665 then
                                if H<=52665 then
                                    tb,Tb=Nb[26658],Nb[13055];
                                    nc,Aa=zc(Ib,G,'',tb,Tb)
                                    if(not nc)then
                                        H=Bc[-26718]or gd(-26718,19962,2709)
                                        continue
                                    else
                                        H=Bc[-5805]or gd(-5805,124349,32217)
                                        continue
                                    end
                                    H=22866
                                else
                                    De,ea=Tb[13446],Nb[13446];
                                    ea='\202,\198\56\213\131\206\128'..ea;
                                    rb='';
                                    Cd,La,H,_c=(#De-1)+167,167,Bc[-17414]or gd(-17414,23170,40103),1
                                end
                            elseif H<=52635 then
                                if ba>28 then
                                    H=Bc[-13449]or gd(-13449,108655,2708)
                                    continue
                                else
                                    H=Bc[22405]or gd(22405,106774,61237)
                                    continue
                                end
                                H=Bc[-17873]or gd(-17873,52979,38004)
                            else
                                if(ba>183)then
                                    H=Bc[8602]or gd(8602,127961,22306)
                                    continue
                                else
                                    H=Bc[-10969]or gd(-10969,27847,39963)
                                    continue
                                end
                                H=Bc[20618]or gd(20618,113247,16792)
                            end
                        elseif H<=46559 then
                            if H>=44886 then
                                if H<=45372 then
                                    if H<=44886 then
                                        if(ba>181)then
                                            H=Bc[18870]or gd(18870,22377,27492)
                                            continue
                                        else
                                            H=Bc[30103]or gd(30103,51896,54267)
                                            continue
                                        end
                                        H=Bc[-660]or gd(-660,12576,50817)
                                    else
                                        if(ba>212)then
                                            H=Bc[619]or gd(619,31775,15892)
                                            continue
                                        else
                                            H=Bc[-32290]or gd(-32290,110498,40149)
                                            continue
                                        end
                                        H=Bc[28455]or gd(28455,103527,31680)
                                    end
                                else
                                    G[Nb[26658]],H=nc,Bc[-5585]or gd(-5585,114713,7367)
                                end
                            elseif H<44793 then
                                G[Nb[26658]],H=nc[Nb[13446]][Nb[47197]],Bc[12145]or gd(12145,113363,46749)
                            elseif H<=44793 then
                                M+=Nb[25402];
                                H=Bc[18148]or gd(18148,19909,5474)
                            else
                                H=Bc[-1620]or gd(-1620,53158,54196)
                                continue
                            end
                        elseif H<=47846 then
                            if H>46907 then
                                M-=1;
                                g[M],H={[12431]=39,[26658]=Ce(Nb[26658],130),[13055]=Ce(Nb[13055],177),[25301]=0},Bc[-25244]or gd(-25244,52609,38182)
                            elseif H>46816 then
                                Uc(ea,1,rb,tb,G);
                                H=Bc[19439]or gd(19439,7623,58720)
                            else
                                tb,Tb,H,nc=Nb[38824],g[M+1],60300,nil
                            end
                        elseif H>48568 then
                            tb=Nb[12099];
                            G[Nb[26658]][tb]=G[Nb[25301]];
                            M+=1;
                            H=Bc[-31019]or gd(-31019,109729,12806)
                        else
                            _c=rb
                            if La~=La then
                                H=Bc[-10802]or gd(-10802,7393,57926)
                            else
                                H=Bc[17299]or gd(17299,110296,62211)
                            end
                        end
                    elseif H<39433 then
                        if H>=37914 then
                            if H>39036 then
                                if H>39189 then
                                    if(Ub>=0 and Cd>_c)or((Ub<0 or Ub~=Ub)and Cd<_c)then
                                        H=Bc[20653]or gd(20653,14252,48598)
                                    else
                                        H=Bc[-20092]or gd(-20092,11235,60297)
                                    end
                                else
                                    if ba>81 then
                                        H=Bc[-2381]or gd(-2381,10050,1210)
                                        continue
                                    else
                                        H=Bc[15285]or gd(15285,62358,41849)
                                        continue
                                    end
                                    H=Bc[7850]or gd(7850,102204,21669)
                                end
                            elseif H>38944 then
                                if Nb[25301]==15 then
                                    H=Bc[9743]or gd(9743,110706,44896)
                                    continue
                                else
                                    H=Bc[27793]or gd(27793,52662,42880)
                                    continue
                                end
                                H=Bc[10107]or gd(10107,5202,64407)
                            elseif H<38518 then
                                tb,Tb,nc=Nb[12099],Nb[19802],G[Nb[26658]]
                                if(nc==tb)~=Tb then
                                    H=Bc[17833]or gd(17833,6012,49835)
                                    continue
                                else
                                    H=Bc[258]or gd(258,128296,13987)
                                    continue
                                end
                                H=Bc[30887]or gd(30887,13836,56405)
                            elseif H<=38518 then
                                if ba>16 then
                                    H=Bc[-8322]or gd(-8322,114813,10347)
                                    continue
                                else
                                    H=Bc[25227]or gd(25227,107447,15011)
                                    continue
                                end
                                H=Bc[126]or gd(126,105227,24748)
                            else
                                if ba>243 then
                                    H=Bc[-11085]or gd(-11085,122916,60382)
                                    continue
                                else
                                    H=Bc[-14959]or gd(-14959,93554,26143)
                                    continue
                                end
                                H=Bc[11574]or gd(11574,18704,4433)
                            end
                        elseif H<37609 then
                            if H>35941 then
                                if not G[Nb[26658]]then
                                    H=Bc[-13609]or gd(-13609,127418,9141)
                                    continue
                                end
                                H=Bc[-23174]or gd(-23174,100711,24256)
                            else
                                if(Cd>=0 and rb>La)or((Cd<0 or Cd~=Cd)and rb<La)then
                                    H=Bc[2304]or gd(2304,101257,21294)
                                else
                                    H=Bc[27300]or gd(27300,17016,21795)
                                end
                            end
                        elseif H<37619 then
                            M-=1;
                            g[M],H={[12431]=188,[26658]=Ce(Nb[26658],241),[13055]=Ce(Nb[13055],151),[25301]=0},Bc[17737]or gd(17737,114130,17687)
                        elseif H<=37619 then
                            tb=da[Nb[13055]+1];
                            H,G[Nb[26658]]=Bc[-8803]or gd(-8803,107071,18872),tb[1][tb[3]]
                        else
                            Oc=Cd
                            if _c~=_c then
                                H=Bc[-22250]or gd(-22250,33,46499)
                            else
                                H=39365
                            end
                        end
                    elseif H<42901 then
                        if H<41749 then
                            if H>39644 then
                                M+=1;
                                H=Bc[30323]or gd(30323,13552,55921)
                            elseif H<=39433 then
                                if(rb>=0 and De>ea)or((rb<0 or rb~=rb)and De<ea)then
                                    H=Bc[-2475]or gd(-2475,10597,44769)
                                else
                                    H=19205
                                end
                            else
                                if(_c>=0 and La>Cd)or((_c<0 or _c~=_c)and La<Cd)then
                                    H=Bc[369]or gd(369,93149,26296)
                                else
                                    H=Bc[19146]or gd(19146,96352,21048)
                                end
                            end
                        elseif H>42139 then
                            rb=rb+Cd;
                            _c=rb
                            if rb~=rb then
                                H=Bc[25944]or gd(25944,28738,2023)
                            else
                                H=35941
                            end
                        elseif H<=41749 then
                            if ba>24 then
                                H=Bc[24192]or gd(24192,98419,17067)
                                continue
                            else
                                H=Bc[29631]or gd(29631,101706,61640)
                                continue
                            end
                            H=Bc[8695]or gd(8695,14393,53182)
                        else
                            if ba>218 then
                                H=Bc[-32287]or gd(-32287,73486,24934)
                                continue
                            else
                                H=Bc[-552]or gd(-552,126968,7946)
                                continue
                            end
                            H=Bc[-30862]or gd(-30862,122885,30626)
                        end
                    elseif H>43916 then
                        if H>44046 then
                            M-=1;
                            H,g[M]=Bc[-1949]or gd(-1949,11632,45809),{[12431]=24,[26658]=Ce(Nb[26658],157),[13055]=Ce(Nb[13055],138),[25301]=0}
                        else
                            Tb=qa[14444];
                            ib,H=tb+Tb-1,Bc[-5114]or gd(-5114,21316,12015)
                        end
                    elseif H<=43368 then
                        if H>42969 then
                            if(ba>202)then
                                H=Bc[-16712]or gd(-16712,68103,27420)
                                continue
                            else
                                H=Bc[14685]or gd(14685,2789,5033)
                                continue
                            end
                            H=Bc[-15103]or gd(-15103,113388,16501)
                        elseif H<=42901 then
                            H,ea=Bc[-16460]or gd(-16460,21315,44029),ea..ae(Ce(Qd(Aa,(_c-82)+1),Qd(De,(_c-82)%#De+1)))
                        else
                            nc,H=ea,56651
                            continue
                        end
                    else
                        if ba>20 then
                            H=Bc[27073]or gd(27073,63646,38156)
                            continue
                        else
                            H=Bc[13304]or gd(13304,27757,42189)
                            continue
                        end
                        H=Bc[-15786]or gd(-15786,4658,63927)
                    end
                elseif H<=59604 then
                    if H>54727 then
                        if H<57747 then
                            if H<56420 then
                                if H<=55416 then
                                    rb=rb+Cd;
                                    _c=rb
                                    if rb~=rb then
                                        H=Bc[-7409]or gd(-7409,127692,15235)
                                    else
                                        H=Bc[-6989]or gd(-6989,130700,64521)
                                    end
                                else
                                    H,ib=Bc[25282]or gd(25282,98880,64445),tb+rb-1
                                end
                            elseif H<56559 then
                                M+=Nb[25402];
                                H=Bc[-9207]or gd(-9207,12931,55332)
                            elseif H<=56559 then
                                Ub=La
                                if Cd~=Cd then
                                    H=Bc[30017]or gd(30017,91132,32411)
                                else
                                    H=Bc[20649]or gd(20649,113431,61901)
                                end
                            else
                                Tb[12099]=nc
                                if(tb==2)then
                                    H=Bc[-988]or gd(-988,68849,26888)
                                    continue
                                else
                                    H=Bc[3021]or gd(3021,51127,36299)
                                    continue
                                end
                                H=12840
                            end
                        elseif H>=58743 then
                            if H<=58812 then
                                if H<=58743 then
                                    G[Nb[26658]],H=#G[Nb[13055]],Bc[1633]or gd(1633,105567,25496)
                                else
                                    if Nb[25301]==110 then
                                        H=Bc[30705]or gd(30705,78920,21420)
                                        continue
                                    else
                                        H=Bc[5943]or gd(5943,50002,34661)
                                        continue
                                    end
                                    H=Bc[-9306]or gd(-9306,56953,42494)
                                end
                            else
                                La=La+_c;
                                Ub=La
                                if La~=La then
                                    H=Bc[4130]or gd(4130,128953,63917)
                                else
                                    H=Bc[-2295]or gd(-2295,973,45597)
                                end
                            end
                        elseif H>57747 then
                            ea[(_c-160)],H=da[Ub[13055]+1],Bc[29378]or gd(29378,106997,60126)
                        else
                            if(Cd>=0 and rb>La)or((Cd<0 or Cd~=Cd)and rb<La)then
                                H=Bc[-14398]or gd(-14398,79641,32500)
                            else
                                H=Bc[-9220]or gd(-9220,112668,57791)
                            end
                        end
                    elseif H<=53992 then
                        if H>53831 then
                            if H<=53964 then
                                if H>53919 then
                                    Tb,nc,Aa=tb.__iter(Tb);
                                    H=Bc[24402]or gd(24402,99567,8930)
                                else
                                    Tb,nc,Aa=Z(Tb);
                                    H=Bc[-18514]or gd(-18514,6674,12033)
                                end
                            else
                                M+=1;
                                H=Bc[-31162]or gd(-31162,101454,21483)
                            end
                        elseif H>=53513 then
                            if H>53513 then
                                if tb==2 then
                                    H=Bc[28467]or gd(28467,108867,14104)
                                    continue
                                elseif tb==3 then
                                    H=Bc[17989]or gd(17989,17371,46494)
                                    continue
                                end
                                H=Bc[-2743]or gd(-2743,123319,65465)
                            else
                                if(ba>84)then
                                    H=Bc[-28574]or gd(-28574,27037,9131)
                                    continue
                                else
                                    H=Bc[8037]or gd(8037,31598,45229)
                                    continue
                                end
                                H=Bc[-17764]or gd(-17764,51270,40931)
                            end
                        elseif H>52742 then
                            H,tb,Tb=10699,g[M],nil
                        else
                            H,De=Bc[-20493]or gd(-20493,130422,53359),De..ae(Ce(Qd(nc,(Cd-79)+1),Qd(Aa,(Cd-79)%#Aa+1)))
                        end
                    elseif H<=54561 then
                        if H<=54460 then
                            if H<=54225 then
                                Aa,H=rb,Bc[3020]or gd(3020,20339,57464)
                                continue
                            else
                                _c=rb
                                if La~=La then
                                    H=Bc[-28604]or gd(-28604,118129,13420)
                                else
                                    H=57747
                                end
                            end
                        else
                            M-=1;
                            g[M],H={[12431]=109,[26658]=Ce(Nb[26658],232),[13055]=Ce(Nb[13055],6),[25301]=0},Bc[-8762]or gd(-8762,99040,26689)
                        end
                    elseif H>54629 then
                        G[Nb[26658]],H={},Bc[-8282]or gd(-8282,25308,2053)
                    else
                        De=De+rb;
                        La=De
                        if De~=De then
                            H=Bc[9842]or gd(9842,19737,1405)
                        else
                            H=Bc[-9576]or gd(-9576,102202,1029)
                        end
                    end
                elseif H<=62017 then
                    if H<60308 then
                        if H>60300 then
                            if H<=60301 then
                                if ba>109 then
                                    H=Bc[482]or gd(482,109367,12232)
                                    continue
                                else
                                    H=Bc[-4713]or gd(-4713,124146,62173)
                                    continue
                                end
                                H=Bc[-25127]or gd(-25127,15599,49736)
                            else
                                Tb,nc,Aa=tb.__iter(Tb);
                                H=Bc[-32244]or gd(-32244,18769,23616)
                            end
                        elseif H>=60098 then
                            if H>60098 then
                                Aa,De=Tb[12099],Nb[12099];
                                De='\202,\198\56\213\131\206\128'..De;
                                ea='';
                                La,rb,Cd,H=(#Aa-1)+82,82,1,Bc[-7707]or gd(-7707,106628,48510)
                            else
                                tb,Tb,nc=Nb[25301],Nb[13055],Nb[12099];
                                Aa=G[Tb];
                                G[tb+1]=Aa;
                                G[tb]=Aa[nc];
                                M+=1;
                                H=Bc[-26758]or gd(-26758,30414,7275)
                            end
                        else
                            if(Nb[25301]==157)then
                                H=Bc[-6516]or gd(-6516,56304,59459)
                                continue
                            else
                                H=Bc[-3282]or gd(-3282,22353,19573)
                                continue
                            end
                            H=Bc[-8227]or gd(-8227,61461,34386)
                        end
                    elseif H<61916 then
                        if H>=60628 then
                            if H<=60628 then
                                tb[12099]=Tb;
                                Nb[12431],H=167,Bc[18461]or gd(18461,126342,29987)
                            else
                                Aa,H=rb,Bc[-21270]or gd(-21270,5290,55459)
                                continue
                            end
                        else
                            H,G[Nb[26658]]=Bc[31261]or gd(31261,12302,51115),G[Nb[13055]]
                        end
                    elseif H>61952 then
                        if ba>207 then
                            H=Bc[27352]or gd(27352,115679,31927)
                            continue
                        else
                            H=Bc[11444]or gd(11444,115665,59129)
                            continue
                        end
                        H=Bc[-6506]or gd(-6506,26633,65454)
                    elseif H>61916 then
                        Aa,H=Tb-1,Bc[-10421]or gd(-10421,25836,6776)
                    else
                        M-=1;
                        H,g[M]=Bc[20879]or gd(20879,58385,35414),{[12431]=244,[26658]=Ce(Nb[26658],72),[13055]=Ce(Nb[13055],157),[25301]=0}
                    end
                elseif H>64475 then
                    if H<64833 then
                        if H>64518 then
                            La=La+_c;
                            Ub=La
                            if La~=La then
                                H=Bc[-18781]or gd(-18781,78066,19861)
                            else
                                H=Bc[20107]or gd(20107,5329,43139)
                            end
                        else
                            G[Nb[13055]]=be(Nb[1706]);
                            M+=1;
                            H=Bc[16626]or gd(16626,104806,28355)
                        end
                    elseif H<=64833 then
                        H,rb=Bc[-24541]or gd(-24541,67744,16058),rb..ae(Ce(Qd(De,(Ub-45)+1),Qd(ea,(Ub-45)%#ea+1)))
                    else
                        Tb,nc,Aa=ad
                        if(Nc(Tb)~='function')then
                            H=Bc[13077]or gd(13077,9490,43765)
                            continue
                        else
                            H=Bc[2208]or gd(2208,110231,29570)
                            continue
                        end
                        H=Bc[-9994]or gd(-9994,54933,64396)
                    end
                elseif H<63705 then
                    if H<=62614 then
                        rb,H=rb..ae(Ce(Qd(De,(Ub-167)+1),Qd(ea,(Ub-167)%#ea+1))),Bc[19205]or gd(19205,104725,48618)
                    else
                        tb=pc(Tb)
                        if(tb~=nil and tb.__iter~=nil)then
                            H=Bc[1686]or gd(1686,20700,64284)
                            continue
                        else
                            H=Bc[-19462]or gd(-19462,3951,65346)
                            continue
                        end
                        H=Bc[7305]or gd(7305,15331,63883)
                    end
                elseif H<64174 then
                    rb,H=nc-1,Bc[11829]or gd(11829,17284,48633)
                elseif H<=64174 then
                    Nb=g[M];
                    H,ba=Bc[9783]or gd(9783,51002,32911),Nb[12431]
                else
                    ea=ea+La;
                    Cd=ea
                    if ea~=ea then
                        H=Bc[-10990]or gd(-10990,1421,8581)
                    else
                        H=Bc[-10698]or gd(-10698,29173,65007)
                    end
                end
            until H==3300
        end
        return function(...)
            local C,Fe,ta,_e,ec,Sb,Ra,Dc,Td,lc,Bd;
            Dc,Bd=function(Hd,Gd,Fa)
                Bd[Fa]=Fc(Hd,23507)-Fc(Gd,1694)
                return Bd[Fa]
            end,{};
            Ra=Bd[-7538]or Dc(81396,45468,-7538)
            while Ra~=11265 do
                if Ra>=28620 then
                    if Ra>51934 then
                        Sb,Fe=nb(zc(w_,C,pa[49172],pa[55305],_e))
                        if(Sb[1])then
                            Ra=Bd[3432]or Dc(91552,51257,3432)
                            continue
                        else
                            Ra=Bd[-29971]or Dc(65212,22360,-29971)
                            continue
                        end
                        Ra=Bd[16086]or Dc(44960,49492,16086)
                    elseif Ra>=44837 then
                        if Ra>44837 then
                            ta,Ra=fc(ta),Bd[25139]or Dc(27806,1174,25139)
                        else
                            Td,C,_e=Hc(...),be(pa[8801]),{[14444]=0,[25735]={}};
                            Uc(Td,1,pa[60574],0,C)
                            if(pa[60574]<Td.n)then
                                Ra=Bd[27121]or Dc(91512,57854,27121)
                                continue
                            else
                                Ra=Bd[31994]or Dc(76694,29690,31994)
                                continue
                            end
                            Ra=Bd[-20023]or Dc(95200,11212,-20023)
                        end
                    else
                        return Xd(Sb,2,Fe)
                    end
                elseif Ra>=21417 then
                    if Ra<=21417 then
                        ta,ec=Sb[2],nil;
                        lc=ta;
                        ec=fc(lc)=='string'
                        if(ec==false)then
                            Ra=Bd[-15751]or Dc(91177,29570,-15751)
                            continue
                        else
                            Ra=Bd[-1601]or Dc(33921,44179,-1601)
                            continue
                        end
                        Ra=Bd[13162]or Dc(38274,40850,13162)
                    else
                        Sb,Fe=pa[60574]+1,Td.n-pa[60574];
                        _e[14444]=Fe;
                        Uc(Td,Sb,Sb+Fe-1,1,_e[25735]);
                        Ra=Bd[-25931]or Dc(107331,64305,-25931)
                    end
                elseif Ra<=11433 then
                    Ra=Bd[-21185]or Dc(49819,27609,-21185)
                    continue
                else
                    return Ja(ta,0)
                end
            end
        end
    end
    return Ka(hd,vb)
end)
local Yb;
Yb,sc={[0]=0},function()
    Yb[0]=Yb[0]+1
    return{[3]=Yb[0],[1]=Yb}
end;
Eb=wb
return(function()
    local ya={[2]=Eb,[3]=2};
    ya[1]=ya
    local ga={[3]=2,[2]=i_};
    ga[1]=ga
    local m={[3]=2,[2]=ca};
    m[1]=m
    local ha={[3]=2,[2]=Vd};
    ha[1]=ha
    return Eb(Na'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',{[1]=ya,[2]=ga,[4]=ha,[3]=m})
end)()(...)
