This is a shell script for transforming mothur output to appropriate format for A. murat Eren's oligotyping pipeline. To successfully run this script, follow the instructions below.

You will need access to the following mothur files to run this script. The examples of file names pertain to the Miseq SOP 
	- taxonomy file: stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pds.wang.taxonomy
	- group file: stability.contigs.good.groups
	- names file: stability.trim.contigs.good.names
	- fasta file: stability.trim.contigs.good.unique.good.filter.fasta


1) Copy all the mothur files listed above into the same directory as this one
2) Edit getlineage.mothur and fill in the appropriate file names and locations
3) Edit mothur2oligo.sh and fill in the appropriate file names at the top. Note: you will have to know the name of the output from getlineage.mothur for the 'redundant' file. If you don't, you will have to run that script first and then run the rest of the shell commands.
4) Once you have run this full script, you can use the '*_headers-replaced.fasta' file in the oligotyping pipeline

Any questions? contact michberr8@gmail.com

Credits:
perl script from http://www.perlmonks.org/?node_id=975419
Sharon Grim helped with this shell script
Oligotyping pipeline: http://merenlab.org/projects/oligotyping/
