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
g(1,1)=gramm('x', flu.Date, 'y', flu.NE);
g(1,1).geom_point();
g(1,1).stat_glm();
g(1,1).set_names('x', 'flu.Date', 'y', 'Percentage')
g(1,1).set_title('NE flu')

g(1,2)=gramm('x', flu.Date, 'y', flu.MidAtl);
g(1,2).geom_point();
g(1,2).stat_glm();
g(1,2).set_names('x', 'flu.Date', 'y', 'Percentage')
g(1,2).set_title('MidAtlantic flu')

g(1,3)=gramm('x', flu.Date, 'y', flu.ENCentral);
g(1,3).geom_point();
g(1,3).stat_glm();
g(1,3).set_names('x', 'flu.Date', 'y', 'Percentage')
g(1,3).set_title('ENCentral flu')

g(2,1)=gramm('x', flu.Date, 'y', flu.WNCentral);
g(2,1).geom_point();
g(2,1).stat_glm();
g(2,1).set_names('x', 'flu.Date', 'y', 'Percentage')
g(2,1).set_title('WNCentral flu')

g(2,2)=gramm('x', flu.Date, 'y', flu.SAtl);
g(2,2).geom_point();
g(2,2).stat_glm();
g(2,2).set_names('x', 'flu.Date', 'y', 'Percentage')
g(2,2).set_title('SAtl flu')

g(2,3)=gramm('x', flu.Date, 'y', flu.ESCentral);
g(2,3).geom_point();
g(2,3).stat_glm();
g(2,3).set_names('x', 'flu.Date', 'y', 'Percentage')
g(2,3).set_title('ESCentral flu')

g(3,1)=gramm('x', flu.Date, 'y', flu.WSCentral);
g(3,1).geom_point();
g(3,1).stat_glm();
g(3,1).set_names('x', 'flu.Date', 'y', 'Percentage')
g(3,1).set_title('WSCentral flu')

g(3,2)=gramm('x', flu.Date, 'y', flu.Mtn);
g(3,2).geom_point();
g(3,2).stat_glm();
g(3,2).set_names('x', 'flu.Date', 'y', 'Percentage')
g(3,2).set_title('Mtn flu')

g(3,3)=gramm('x', flu.Date, 'y', flu.Pac);
g(3,3).geom_point();
g(3,3).stat_glm();
g(3,3).set_names('x', 'flu.Date', 'y', 'Percentage')
g(3,3).set_title('Pac flu')

figure('Position', [100, 100, 800, 800]);
g.draw();
