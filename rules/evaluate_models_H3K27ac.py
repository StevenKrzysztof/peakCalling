all_methods = ["macs2","macs3","epic2","homer"]
#evaluate h3k4me3
rule evaluate_macs2:
	input:
		"data/macs2/runningData/{sample}_peak.xls"
	output:
		"data/evaluate_models/macs2_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_macs2.sh -i {wildcards.sample} -s src/standards/SRX4143063.10.bed -t {threads} > {output}"



rule evaluate_macs3:
	input:
		"data/macs3/runningData/{sample}_peak.xls"
	output:
		"data/evaluate_models/macs3_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_macs3.sh -i {wildcards.sample} -s src/standards/SRX4143063.10.bed -t {threads} > {output}"



rule evaluate_epic2:
    input:
        "data/epic2/runningData/{sample}_peak.txt"
    output:
        "data/evaluate_models/epic2_{sample}.txt"
    conda:
        "../envs/eval.yml"
    threads: 4
    resources:
        mem_mb = 2000
    shell:
        "bash src/custom/evals/evaluate_epic2.sh -i {wildcards.sample} -s src/standards/SRX4143063.10.bed -t {threads} > {output}"


# {wildcards.sample} workaround will accommodate for "narrowPeak" and "broadPeak" files.
rule evaluate_homer:
	input:
		"data/homer/runningData/{sample}_peak.xls"
	output:
		"data/evaluate_models/homer_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_homer.sh -i {wildcards.sample} -s src/standards/SRX4143063.10.bed -t {threads} > {output}"


rule evaluate_lanceOtron:
	input:
		"data/lanceotron/runningData/{sample}_peaks.xls"
	output:
		"data/evaluate_models/lanceOtron_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_otron.sh -i {wildcards.sample} -s src/standards/SRX4143063.10.bed -t {threads} > {output}"
