# This is a shell script for transforming mothur output to appropriate format for 
# A. murat Eren's oligotyping pipeline 

# Set variables
groups = #'stability.contigs.good.groups'
redundant = #'stability.trim.contigs.good.unique.good.filter.pick.redundant.fasta'

# Call mothur script for generating deuniqued fasta file for a specific lineage
mothur getlineage.mothur

# Make a file which maps sample names to sequence headers
cat groups | sed 's/_/:/g' > intermediate1
paste groups intermediate1 | awk 'BEGIN{FS="\t"}{print $1"\t"$2"_"$3}' > intermediate2

# Perl script to rename the headers of the fasta to include the sample name at the beginning
perl renamer.pl redundant intermediate2

