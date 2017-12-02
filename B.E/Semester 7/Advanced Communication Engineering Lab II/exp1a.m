n1=1.47;
n2=1.46;
a=25;
delta=((n1*n1)-(n2*n2))/(2*n1*n1);
alpha=0.2; % profile parameter
r=-50:1:50
for i=1:1:length(r)
    if(abs(r(i))<=a)
        n(i)=n1*sqrt((1-(2*delta*((abs(r(i))/a)^(alpha)))));
    end
    if(abs(r(i))>a)
        n(i)=n2;
    end
end
subplot(2,2,1);
plot(r,n)
grid on;
xlabel('Radial Distance');
ylabel('Refractive Index');
title('For alpha=1')

% alpha1=2;
% r=-50:1:50
% for i=1:1:length(r)
%     if(abs(r(i))<=a)
%         n(i)=n1*sqrt((1-(2*delta*((abs(r(i))/a)^(alpha1)))));
%     end
%     if(abs(r(i))>a)
%         n(i)=n2;
%     end
% end
% subplot(2,2,2);
% plot(r,n)
% grid on;
% xlabel('Radial Distance');
% ylabel('Refractive Index');
% title('For alpha=2')
% 
% alpha2=4;
% r=-50:1:50
% for i=1:1:length(r)
%     if(abs(r(i))<=a)
%         n(i)=n1*sqrt((1-(2*delta*((abs(r(i))/a)^(alpha2)))));
%     end
%     if(abs(r(i))>a)
%         n(i)=n2;
%     end
% end
% subplot(2,2,3);
% plot(r,n)
% grid on;
% xlabel('Radial Distance');
% ylabel('Refractive Index');
% title('For alpha=4')
% 
% alpha=inf;
% r=-50:1:50
% for i=1:1:length(r)
%     if(abs(r(i))<=a)
%         n(i)=n1*sqrt((1-(2*delta*((abs(r(i))/a)^(alpha)))));
%     end
%     if(abs(r(i))>a)
%         n(i)=n2;
%     end
% end
% subplot(2,2,4);
% plot(r,n)
% grid on;
% xlabel('Radial Distance');
% ylabel('Refractive Index');
% title('For alpha=inf')