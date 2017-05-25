#!/bin/bash

# -*- coding: utf-8 -*-
# Code: sweep analysis
# Author: Baihan Lin
# Date: Apr 2017
# Lab: UbiComp Lab

folder=`pwd`
mscript=${folder//*\//}_sweep_analysis_baihan.m
echo "% sweep analysis.m for experiment ${folder//*\//} \n% Baihan Lin, Apr 2017\n" > $mscript

echo "clear all; close all;" >> $mscript
echo "\nload('${folder//*\//}.mat')\n" >> $mscript
echo "path=('$folder/out/');\nsystem(['mkdir ' path]);\n" >> $mscript


for f in `ls acc0*csv`
do
    acc0=${f//.csv/}
    acc1=${acc0/acc0/acc1}

	echo "%% -----$acc0 $acc1------\n" >> $mscript
    echo "n_$acc0 = max($acc0.');" >> $mscript
    echo "n_$acc1 = max($acc1.');\n" >> $mscript
    echo "n = int64(length($acc0) * 6 / 7);" >> $mscript
    echo "maxval=0;\nmaxindex=1;" >> $mscript
    echo "\nfor m = 1:length($acc0)-n\ns=sum(n_$acc0(m:m+n-1));\nif(s>maxval)\nmaxval = s;\nmaxindex = m;\nend\nend\n" >> $mscript
    echo "p01 = n_$acc0(maxindex:maxindex+n-1)./n_$acc1(maxindex:maxindex+n-1);" >> $mscript
    echo "p10 = n_$acc1(maxindex:maxindex+n-1)./n_$acc0(maxindex:maxindex+n-1);\n" >> $mscript

	echo "figure(1)\nset(gca,'FontSize',16)\nplot(linspace(0,1000,n),p01);" >> $mscript
	echo "ylabel('acc0/acc1');\nxlabel('frequency (Hz)');\ntitle('acc0${acc1//_/\\_}');" >> $mscript
	echo "filename = strcat(path, 'pacc0$acc1.png');\nsaveas(gcf, filename,'png');\n" >> $mscript

	echo "figure(2)\nset(gca,'FontSize',16)\nplot(linspace(0,1000,n),p10);" >> $mscript
	echo "ylabel('acc1/acc0');\nxlabel('frequency (Hz)');\ntitle('acc1${acc0//_/\\_}');" >> $mscript
	echo "filename = strcat(path, 'pacc1$acc0.png');\nsaveas(gcf, filename,'png');\n" >> $mscript

	echo "figure(3)\nset(gca,'FontSize',16)" >> $mscript
	echo "plot(linspace(0,1000,n),$acc0(maxindex:maxindex+n-1,1)); hold on" >> $mscript
	echo "plot(linspace(0,1000,n),$acc0(maxindex:maxindex+n-1,2)); hold on" >> $mscript
	echo "plot(linspace(0,1000,n),$acc0(maxindex:maxindex+n-1,3));" >> $mscript
	echo "ylabel('acceleration');\nxlabel('frequency (Hz)');" >> $mscript
	echo "title('${acc0//_/\\_}');\nfilename = strcat(path, '$acc0.png');\nsaveas(gcf, filename,'png');\n" >> $mscript

	echo "figure(4)\nset(gca,'FontSize',16);" >> $mscript
	echo "plot(linspace(0,1000,n),$acc1(maxindex:maxindex+n-1,1)); hold on" >> $mscript
	echo "plot(linspace(0,1000,n),$acc1(maxindex:maxindex+n-1,2)); hold on" >> $mscript
	echo "plot(linspace(0,1000,n),$acc1(maxindex:maxindex+n-1,3));" >> $mscript
	echo "ylabel('acceleration');\nxlabel('frequency (Hz)');" >> $mscript
	echo "title('${acc1//_/\\_}');\nfilename = strcat(path, '$acc1.png');\nsaveas(gcf, filename,'png');\n" >> $mscript

	echo "close(figure(1));close(figure(2));close(figure(3));close(figure(4));\n" >> $mscript

done

#fscript=`pwd`/$mscript

/Applications/Work/MATLAB_R2015b.app/bin/matlab -nodesktop -r "${mscript//.m/}"

