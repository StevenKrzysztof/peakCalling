all_methods = ["macs2","macs3"]
#evaluate h3k4me3
rule evaluate_macs2:
	input:
		"data/macs2/{sample}/{sample}_peaks.xls"
	output:
		"data/evaluate_models/macs2_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_macs3.sh -i {wildcards.sample} -s src/standards/ENCFF885FQN.bed -t {threads} > {output}"



rule evaluate_macs3:
	input:
		"data/macs3/{sample}_peaks.xls"
	output:
		"data/evaluate_models/macs3_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_macs3.sh -i {wildcards.sample} -s src/standards/ENCFF885FQN.bed -t {threads} > {output}"


# rule evaluate_macs3_broad:
# 	input:
# 		"data/macs3/k562_1_h3k27me3/{sample}_peaks.xls"
# 	output:
# 		"data/evaluate_models/macs3_{sample}.txt"
# 	conda:
# 		"../envs/eval.yml"
# #		standard=get_standard
# 	threads: 4
# 	resources:
# 		mem_mb = 2000
# 	shell:
# 		"bash src/custom/evals/evaluate_macs3.sh -i {wildcards.sample} -s src/standards/k562_h3k27me3.bed -t {threads} > {output}"
# {wildcards.sample} workaround will accommodate for "narrowPeak" and "broadPeak" files.
rule evaluate_epic2:
    input:
        "data/epic2/{sample}_peaks.xls"
    output:
        "data/evaluate_models/epic2_{sample}.txt"
    conda:
        "../envs/eval.yml"
    threads: 4
    resources:
        mem_mb = 2000
    shell:
        "bash src/custom/evals/evaluate_epic2.sh -i {wildcards.sample} -s src/standards/ENCFF885FQN.bed -t {threads} > {output}"


# {wildcards.sample} workaround will accommodate for "narrowPeak" and "broadPeak" files.
rule evaluate_homer:
	input:
		"data/homer/{sample}_peaks.xls"
	output:
		"data/evaluate_models/homer_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_homer.sh -i {wildcards.sample} -s data/plotForH3k4me3/reference_results.bed -t {threads} > {output}"

#bash src/custom/evals/evaluate_epic2.sh -i data/epic2/k562_1_h3k4me3/k562_1_h3k4me3.xls -s data/plotForH3k4me3/reference_results.bed -t 4 > data/evaluate_models/epic2_k562_1_h3k4me3.txt
# {wildcards.sample} workaround will accommodate for "narrowPeak" and "broadPeak" files.

# rule evaluate_seacr_relaxed:
# 	input:
# 		"data/seacr/{sample}.relaxed.bed"
# 	output:
# 		"data/evaluate_models/seacr-relaxed_{sample}.txt"
# 	conda:
# 		"../envs/eval.yml"
# 	params:
# 		standard=get_standard
# 	threads: 4
# 	resources:
# 		mem_mb = 2000
# 	shell:
# 		"bash src/custom/evals/evaluate_seacr.sh -i {input} -s {params.standard} -t {threads} > {output}"
#
# rule evaluate_seacr_stringent:
# 	input:
# 		"data/seacr/{sample}.stringent.bed"
# 	output:
# 		"data/evaluate_models/seacr-stringent_{sample}.txt"
# 	conda:
# 		"../envs/eval.yml"
# 	params:
# 		standard=get_standard
# 	threads: 4
# 	resources:
# 		mem_mb = 2000
# 	shell:
# 		"bash src/custom/evals/evaluate_seacr.sh -i {input} -s {params.standard} -t {threads} > {output}"
#
# rule evaluate_gopeaks:
# 	input:
# 		"data/peak_counts/gopeaks_{sample}.bed"
# 	output:
# 		"data/evaluate_models/gopeaks_{sample}.txt"
# 	conda:
# 		"../envs/eval.yml"
# 	params:
# 		standard=get_standard
# 	threads: 4
# 	resources:
# 		mem_mb = 2000
# 	shell:
# 		"bash src/custom/evals/evaluate_gopeaks.sh -i {input} -s {params.standard} -t {threads} > {output}"
#
rule plot_roc:
	input:
		"data/evaluate_models/macs2_k562_1_h3k4me3.txt"
		# expand("data/evaluate_models/{method}_k562_1_h3k4me3.txt",
		# 	method = all_methods)
			# sample = k562_1_h3k4me3)

	output:
		directory("data/figures/roc"),
		directory("data/figures/pr")
	conda:
		"../envs/plot.yml"
	script:
		"../src/custom/evals/plot_evals.R"
