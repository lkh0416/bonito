# python -m bonito/cli/basecaller dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw --reference /home/lkh0416/codes_current/nanopore/data/references/GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta.gz > basecalls.bam
# python bonito/cli/basecaller.py dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw > basecalls.bam


# aligned version
# python bonito/cli/basecaller.py [model] [input_dir] --reference [reference_fasta] > basecalls.bam
python bonito/cli/basecaller.py dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw --reference /home/lkh0416/codes_current/nanopore/data/references/GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta > basecalls.bam