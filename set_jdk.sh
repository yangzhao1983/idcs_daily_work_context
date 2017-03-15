#!/bin/bash
SW_JDK="/scratch/yangzhao/idcs/sw/jdk1.8.0_121/bin"
if [ -d "$DW_JDK" ]
then
	export PATH=$SW_JDK:$PATH
else
	export PATH=/net/adcnas444/export/ade_adc_txn/aime/jdk1.8.0_111/bin:$PATH
if
