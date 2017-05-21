#!/usr/bin/sh
#usage: sh sam_to_graphic_viewer_input.sh reference.fasta file.sam
#Generate required inputs for the visualization of NGS assambly in Tablet software https://ics.hutton.ac.uk/tablet/download-tablet/

reference=`echo "$1"`
samfile=`echo "$2"`
name=`echo "$samfile" | sed "s/.sam//g"`

samtools faidx "$reference"  #creates index *.fai
samtools view -bt "$reference".fai "$samfile" > "$name".bam
samtools sort "$name".bam > "$name"_sorted.bam
samtools index "$name"_sorted.bam  #creates index *.bai
