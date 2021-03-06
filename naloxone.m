%% Recreating graphs from microglia paper
mydata = 'NaloxoneBehavior.xlsx';
NaloxoneTable = readtable(mydata);
NaloxoneTable.Treatment=categorical(NaloxoneTable.Treatment);
NaloxoneTable.Label=categorical(NaloxoneTable.Label);



%% Stacked Version
NaloxoneStacked = stack(NaloxoneTable,{'Distance','Contracted','Immobile'},...
                    'NewDataVariableName','points',...
                    'IndexVariableName','measurements');
NaloxoneStacked.Label=categorical(NaloxoneStacked.Label);              
g=gramm('x', NaloxoneStacked.Label, 'y', NaloxoneStacked.points, 'color', NaloxoneStacked.Label);
g.geom_jitter();
g.stat_violin('normalization','width', 'fill', 'transparent', 'width', 2);
g.stat_summary('geom',{'point' 'black_errorbar'},'width',0.3,'dodge',0, 'setylim',false,'type','sem');
g.facet_wrap(NaloxoneStacked.measurements,'ncols',3,'scale','free_y');
g.set_order_options('x', {'SS', 'SN', 'MS', 'MN'})
figure('Position', [100, 100, 800, 800]);
g.draw();

                 
%% Unstacked version                  
g(1,1)=gramm('x', NaloxoneTable.Label, 'y', NaloxoneTable.Distance, 'color', NaloxoneTable.Label);
g(1,1).geom_jitter();
g(1,1).stat_violin('normalization','width', 'fill', 'transparent', 'width', 2);
g(1,1).set_title('Distance');
g(1,1).set_order_options('x', {'SS', 'SN', 'MS', 'MN'})
g(1,1).stat_summary('geom',{'point' 'black_errorbar'},'width',0.3,'dodge',0, 'setylim',false,'type','sem');
g(1,1).set_names('x', '', 'y','Distance (cm)');

g(1,2)=gramm('x', NaloxoneTable.Label, 'y', NaloxoneTable.Contracted, 'color', NaloxoneTable.Label);
g(1,2).geom_jitter();
g(1,2).stat_violin('normalization','width', 'fill', 'transparent', 'width', 3);
g(1,2).set_title('Contraction');
g(1,2).axe_property('YLim',[0 1500]);
g(1,2).set_order_options('x', {'SS', 'SN', 'MS', 'MN'})
g(1,2).stat_summary('geom',{'point' 'black_errorbar'},'width',0.3,'dodge',0, 'setylim',false,'type','sem');
g(1,2).set_names('x', '', 'y','Contraction (s)');

g(1,3)=gramm('x', NaloxoneTable.Label, 'y', NaloxoneTable.Immobile, 'color', NaloxoneTable.Label);
g(1,3).geom_jitter();
g(1,3).stat_violin('normalization','width', 'fill', 'transparent', 'width', 3);
g(1,3).set_title('Immobility');
g(1,3).axe_property('YLim',[0 1500]);
g(1,3).set_order_options('x', {'SS', 'SN', 'MS', 'MN'})
g(1,3).stat_summary('geom',{'point' 'black_errorbar'},'width',0.3,'dodge',0, 'setylim',false,'type','sem');
g(1,3).set_names('x', '', 'y','Immobility (cms)');


figure('Position',[50 50 1000 500]);
g.draw();