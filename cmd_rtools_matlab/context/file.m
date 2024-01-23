plot([0 4 2 6 3])
ax = gca;
exportgraphics(ax,"/nfs/rnas/myplot.jpg") % Save a JPEG
exportgraphics(ax,"/nfs/rnas/myplot.pdf","ContentType","vector") % Save a PDF