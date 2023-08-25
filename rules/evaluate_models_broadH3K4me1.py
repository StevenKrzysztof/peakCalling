all_methods = ["macs2","macs3","epic2","homer"]
#evaluate h3k4me3

rule evaluate_macs2:
	input:
		"data/macs2/runningDataBroad/{sample}_peak.xls"
	output:
		"data/evaluate_models/macs2_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_macs2_broad.sh -i {wildcards.sample} -s src/standards/ENCFF759NWD.bed -t {threads} > {output}"




rule evaluate_macs3_broad:
	input:
		"data/macs3/runningDataBroad/{sample}_peak.xls"
	output:
		"data/evaluate_models/macs3_{sample}.txt"
	conda:
		"../envs/eval.yml"
#		standard=get_standard
	threads: 4
	resources:
		mem_mb = 2000
	shell:
		"bash src/custom/evals/evaluate_macs3_broad.sh -i {wildcards.sample} -s src/standards/ENCFF759NWD.bed -t {threads} > {output}"
