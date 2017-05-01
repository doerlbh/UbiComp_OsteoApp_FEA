#!/bin/bash

# -*- coding: utf-8 -*-
# Code: analysis
# Author: Baihan Lin
# Date: Apr 2017
# Lab: UbiComp Lab

# use in individual folder

grep csv list.txt | grep acc1 | cut -c 46-59 > uniqlist.txt

cp -r out out_replot
cd out_replot
mkdir forTex

i=1
for f in `cat ../uniqlist.txt`
do
	convert *$f* +append tex_$f.png
	cp tex_$f.png forTex/t2_$i.png
	mkdir $f/;
	mv *$f.png $f/
	let i+=1
done

rm *.png
cd ../
