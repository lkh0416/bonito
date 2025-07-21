# python -m bonito/cli/basecaller dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw --reference /home/lkh0416/codes_current/nanopore/data/references/GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta.gz > basecalls.bam
# python bonito/cli/basecaller.py dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw > basecalls.bam


# aligned version
## python bonito/cli/basecaller.py [model] [input_dir] --reference [reference_fasta] > basecalls.bam
# python bonito/cli/basecaller.py dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw --reference /home/lkh0416/codes_current/nanopore/data/references/GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta > basecalls.bam

# prepare training
# python bonito/cli/basecaller.py dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw --reference /home/lkh0416/codes_current/nanopore/data/references/GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta --save-ctc > basecalls.bam

# start training
## python bonito/cli/train.py -f [output directory] --directory [data directory] --config [model configuration] --epochs 10 --chunks 100 --batch 16 --valid-chunks 1
python bonito/cli/train.py -f ./output/trial --directory ./bonito/data/from_1p/ --config ./bonito/models/configs/dna_r10.4.1@v5.0.toml --epochs 10 --chunks 100 --batch 16 --valid-chunks 1

# try evaluate (not done, later)
# bonito evaluate dna_r10.4.1_e8.2_400bps_hac@v5.0.0 /home/lkh0416/codes_current/nanopore/data/dna_20x/raw --reference /home/lkh0416/codes_current/nanopore/data/references/GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta