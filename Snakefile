# vim: syntax=snakemake

configfile: 'config.yaml'

# main rule, specify exact output file
rule all:
  input:
    pass

# sub-rules


# Snakemake notification
onerror:
  print("Error: Snakemake aborted!")
  shell("mail -s 'Snakemake Job Error: See log inside!' {config[email]} < {log}")


onsuccess:
  print("Success: Snakemake completed!")
  shell("mail -s 'Snakemake Job Completed: Have a Beer!' {config[email]} < {log}")
