#!/bin/bash

#SBATCH -o /naslx/ptmp/1/di34muf/swe-analysis.%j.%N.out
#SBATCH -D /naslx/ptmp/1/di34muf
#SBATCH --mail-user=blocher@in.tum.de
#SBATCH --time=00:05:00

source /etc/profile.d/modules.sh
module load netcdf

./SWE_gnu_release_openmp_fwave 20 20 tohoku_dynamic_hd tohoku_gebco_ucsb3_500m_hawaii_bath.nc tohoku_percy_500m_displ.nc 400
