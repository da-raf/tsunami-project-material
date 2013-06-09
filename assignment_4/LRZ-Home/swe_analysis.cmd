#!/bin/bash

#SBATCH -o /naslx/ptmp/21/di34muz/swe-analysis.%j.%N.out
#SBATCH -D /home/hpc/t1221/di34muz/SWE/build
#SBATCH --mail-user=duemig@in.tum.de
#SBATCH --time=00:45:00

source /etc/profile.d/modules.sh
module load amplifier_xe
module load netcdf

amplxe-cl -collect hotspots -follow-child -mrte-mode=auto -target-duration-type=short -no-allow-multiple-runs -no-analyze-system -data-limit=100 -slow-frames-threshold=40 -fast-frames-threshold=100 -- /home/hpc/t1221/di34muz/SWE/build/SWE_intel_release_none_fwave 400 400 artifts_intel /home/hpc/t1221/di34muz/SWE/build/artificialtsunami_bathymetry_1000.nc artificialtsunami_displ_1000.nc 180
