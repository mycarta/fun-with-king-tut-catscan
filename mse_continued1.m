zk2calc=k2calc(:,3)';
zk3=k3(:,3)';
zk25=k25(:,3)';
zk65=k65(:,3)';
zk55=k55(:,3)';
zk45=k45(:,3)';
zk35=k35(:,3)';
zk4=k4(:,3)';
zk5=k5(:,3)';
zk6=k6(:,3)';
zk7=k7(:,3)';
zk8=k8(:,3)';
zk9=k9(:,3)';
zk10=k10(:,3)';
zk75=k75(:,3)';
zk85=k85(:,3)';
zk95=k95(:,3)';


Z25=zeros(111,191);
Z25=reshape(zk25,size(Z25));
Z75=zeros(111,191);
Z75=reshape(zk75,size(Z75));
Z85=zeros(111,191);
Z85=reshape(zk85,size(Z85));
Z95=zeros(111,191);
Z95=reshape(zk95,size(Z95));
Z8=zeros(111,191);
Z8=reshape(zk8,size(Z8));
Z9=zeros(111,191);
Z9=reshape(zk9,size(Z9));
Z10=zeros(111,191);
Z10=reshape(zk10,size(Z10));
Z7=zeros(111,191);
Z7=reshape(zk7,size(Z7));
Z65=zeros(111,191);
Z65=reshape(zk65,size(Z65));
Z55=zeros(111,191);
Z55=reshape(zk55,size(Z55));
Z45=zeros(111,191);
Z45=reshape(zk45,size(Z45));
Z35=zeros(111,191);
Z35=reshape(zk35,size(Z35));
Z6=zeros(111,191);
Z6=reshape(zk6,size(Z6));
Z5=zeros(111,191);
Z5=reshape(zk5,size(Z5));
Z4=zeros(111,191);
Z4=reshape(zk4,size(Z4));
Z3=zeros(111,191);
Z3=reshape(zk3,size(Z3));
Z2calc=zeros(111,191);
Z2calc=reshape(zk2calc,size(Z2calc));

mse25=mean((Z25(:)-Z2calc(:)).^2);
mse3=mean((Z3(:)-Z25(:)).^2);
mse35=mean((Z35(:)-Z3(:)).^2);
mse4=mean((Z4(:)-Z35(:)).^2);
mse45=mean((Z45(:)-Z4(:)).^2);
mse5=mean((Z5(:)-Z45(:)).^2);
mse55=mean((Z55(:)-Z5(:)).^2);
mse6=mean((Z6(:)-Z55(:)).^2);
mse65=mean((Z65(:)-Z6(:)).^2);
mse7=mean((Z7(:)-Z65(:)).^2);
mse75=mean((Z75(:)-Z7(:)).^2);
mse8=mean((Z8(:)-Z75(:)).^2);
mse85=mean((Z85(:)-Z8(:)).^2);
mse9=mean((Z9(:)-Z85(:)).^2);
mse95=mean((Z95(:)-Z9(:)).^2);
mse10=mean((Z10(:)-Z95(:)).^2);


mse=zeros(16,1);
mse(16)=mse10;
mse(15)=mse95;
mse(14)=mse9;
mse(13)=mse85;
mse(12)=mse8;
mse(11)=mse75;
mse(10)=mse7;
mse(9)=mse65;
mse(8)=mse6;
mse(7)=mse55;
mse(6)=mse5;
mse(5)=mse45;
mse(4)=mse4;
mse(3)=mse35;
mse(2)=mse3;
mse(1)=mse25;
pltx=2.5:0.5:10;
plot(pltx,mse,'--ro','LineWidth',2,'MarkerEdgeColor','b','MarkerFaceColor','y','MarkerSize',8);

itrpx=2.5:0.125:10;
itrp_mse = interp1(pltx,mse,itrpx);
poly_itrp_mse = polyinterp(pltx,mse,itrpx); % using Cleve Moler polyinterp
plot(itrpx,itrp_mse,'-b','LineWidth',2);
pchip_itrp_mse = pchip(pltx,mse,itrpx); % using Cleve Moler pchip
                                        % Cubic Hermite Interpolating Polynomial
plot(itrpx,pchip_itrp_mse,'-b','LineWidth',1);


%mse3=mean((Z3(:)-Z2calc(:)).^2);
%mse35=mean((Z35(:)-Z2calc(:)).^2);
%mse4=mean((Z4(:)-Z2calc(:)).^2);
%mse45=mean((Z45(:)-Z2calc(:)).^2);
%mse5=mean((Z5(:)-Z2calc(:)).^2);
%mse55=mean((Z55(:)-Z2calc(:)).^2);
%mse6=mean((Z6(:)-Z2calc(:)).^2);
%mse65=mean((Z65(:)-Z2calc(:)).^2);
%mse7=mean((Z7(:)-Z2calc(:)).^2);

