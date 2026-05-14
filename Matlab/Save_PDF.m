figure(2)
h = gcf;
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% print(h,'Supp_fit','-dpdf','-r0')
% print(h,'Leak_vs_Leak_Loss','-dpdf','-r0')
% print(h,'Map','-dpdf','-r0')
% print(h,'Supp_Map','-dpdf','-r0')
print(h,'Map','-dpdf','-r0')
figure(1)
h = gcf;
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% print(h,'Supp_fit','-dpdf','-r0')
% print(h,'Leak_vs_Leak_Loss','-dpdf','-r0')
% print(h,'Map','-dpdf','-r0')
% print(h,'Supp_Map','-dpdf','-r0')
print(h,'Supp_Map','-dpdf','-r0')
figure(3)
h = gcf;
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% print(h,'Supp_fit','-dpdf','-r0')
% print(h,'Leak_vs_Leak_Loss','-dpdf','-r0')
% print(h,'Map','-dpdf','-r0')
% print(h,'Supp_Map','-dpdf','-r0')
print(h,'neurons_and_loss_2','-dpdf','-r0')
% figure(4)
% h = gcf;
% set(h,'Units','Inches');
% pos = get(h,'Position');
% set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% % print(h,'Supp_fit','-dpdf','-r0')
% % print(h,'Leak_vs_Leak_Loss','-dpdf','-r0')
% % print(h,'Map','-dpdf','-r0')
% % print(h,'Supp_Map','-dpdf','-r0')
% print(h,'Supp_fit','-dpdf','-r0')


% h = gcf;
% set(h,'Units','Inches');
% pos = get(h,'Position');
% set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% % print(h,'Supp_fit','-dpdf','-r0')
% % print(h,'Leak_vs_Leak_Loss','-dpdf','-r0')
% % print(h,'Map','-dpdf','-r0')
% % print(h,'Supp_Map','-dpdf','-r0')
% print(h,'R1P4','-dpdf','-r0')


%%

% figure(1)
% for i=1:6
%     y=0;
% subplot(6,1,i)
% x = pi*16*linspace(-1,1,1000);
% y = (cos(x+16*i)+sin(x+16*i)).*exp(-x.^2/128)+0.5*(randn(1,1000)+1i*randn(1,1000));
% plot(x,y,'Color',[0.6350 0.0780 0.1840])
% xlim([-32 32])
% set(gca,'XColor', 'none','YColor','none')
% set(gca, 'color', 'none');
% end