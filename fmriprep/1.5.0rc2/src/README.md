curr_dir=`pwd`
cd ../install 
singularity build fmriprep-1.5.0rc2.simg docker://poldracklab/fmriprep:1.5.0rc2
cd $curr_dir

This can be run as in the following example (see fpriprep docs for data directory and file requirements)
https://fmriprep.readthedocs.io/en/stable/installation.html#singularity-container

ingularity run --cleanenv -B /work:/work ~/poldracklab_fmriprep_latest-2016-12-04-5b74ad9a4c4d.simg \
  /work/my_dataset/ /work/my_dataset/derivatives/fmriprep \
  participant \
  --participant-label 387 --nthreads 16 \
  --omp-nthreads 16

run with:
singularity run --cleanenv -B work:/work fmriprep-latest.simg /work/ds000003-download/ /work/output-test/ participant --fs-license-file /work/license.txt --nthreads 16 -w /work/XXX/XXX
#otherwise, singularity makes the working directory $HOME/work which is bad on a network filesystem if you're running in /scratch for example
#here's a loop to run it in parallel, since it doesn't do that by default either...
#for subject in work/ds000003-download/sub-*; do echo singularity run --cleanenv -B work:/work fmriprep-latest.simg /work/ds000003-download/ /work/output-test/ participant --fs-license-file /work/license.txt -w /work/work --participant_label $(basename ${subject}); done | parallel
