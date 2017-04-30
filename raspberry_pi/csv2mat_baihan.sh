#!/bin/bash

# -*- coding: utf-8 -*-
# Code: csv to mat
# Author: Baihan Lin
# Date: Apr 2017
# Lab: UbiComp Lab

folder=`pwd`
for f in `ls *csv`
do
    mname=${f//.csv/}
    cat $mname.csv | tr '\n' ';' > $mname.list 
    sed -i -e "s/^/${mname}=[/" $mname.list
    sed -i -e 's/$/];/' $mname.list
done

cat *list > ${folder//*\//}_data_baihan.m
echo "save('${folder//*\//}');" >> ${folder//*\//}_data_baihan.m
rm *.list*

/Applications/Work/MATLAB_R2015b.app/bin/matlab -nodesktop -r "${folder//*\//}_data_baihan"
