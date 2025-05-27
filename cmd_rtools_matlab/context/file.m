plot([0 4 2 6 3])
ax = gca;
exportgraphics(ax,"/nfs/rwork/myplot.jpg") % Save a JPEG
exportgraphics(ax,"/nfs/rwork/myplot.pdf","ContentType","vector") % Save a PDF