%%Built graph using cereal data graphing fat vs protein and sorting by
%%brand 
load cereal.mat;
g=gramm('x', Fat, 'y', Protein, 'color', Name);
g.geom_point();
g.stat_glm();
g.set_names('x', 'Fat', 'y', 'Protein', 'color', 'Brand');
g.set_title('Cereal Healthiness');
figure('Position', [100, 100, 800, 400]);
g.draw();
%% Graph using flu data  
load flu.mat;
