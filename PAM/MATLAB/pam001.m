clc
close all
clearvars

%% Init
T = 1;
m = 4;

m1 = 10000;

a = [+1 +3 -1 +1 -3 +1 0];

t = 0:T/m1:T*length(a)-T/m1;

% g1 = ones(1,m1);
g1 = (0:(m1-1))/m1;
a1 = [a; zeros(m1-1,length(a))];
a1 = reshape(a1,1,[]);

v1 = conv(a1,g1);
v1 = v1(1:m1*length(a));

figure
h = plot(t,v1);
set(h,'Color','k');
set(h,'LineWidth',2);
ylim([-4 4]);
h = line([min(t) max(t)],[0 0]);
set(h,'Color','k');
%set(h,'LineWidth',0.5);
xticks=0:1:length(a);
xlabel('t/T');
set(gca,'XTick',xticks,'XTickLabel',sprintf('%3d\n',xticks));
grid on
grid minor
print('\Users\larst\LectureNotes\34302\PAM\pam001c.png','-dpng');

figure
h = stem(t(1:m1/m:end),v1(1:m1/m:end),'*');
set(h,'Color','k');
set(h,'LineWidth',0.5);
set(h,'MarkerSize',8);
ylim([-4 4]);
h = line([min(t) max(t)],[0 0]);
set(h,'Color','k');
%set(h,'LineWidth',0.5);
xticks=0:1:length(a);
xlabel('t/T');
set(gca,'XTick',xticks,'XTickLabel',sprintf('%3d\n',xticks));
grid on
grid minor
print('\Users\larst\LectureNotes\34302\PAM\pam001d.png','-dpng');