mkdir -p logs && snakemake --jn "snakejob.{jobid}" \
  --rerun-incomplete \
  --cluster-config cluster.yaml \
  --cluster "sbatch --output {cluster.output} --time {cluster.time} --mem {cluster.mem}" \
  -j 999 \
  --keep-going
