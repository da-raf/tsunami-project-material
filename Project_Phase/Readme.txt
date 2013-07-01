The Programm boyehelper is needed to get the data from one Boye in a own file for paraview
Compile note: linker for netdcdf needed
eg use: if your Boyes are in fiel xy_00_Boye.nc and you want to get the Boye #3
        ./BoyeHelper xy_00_Boye 3

Needed settings for Scons:  solver=fwave
                            block=dimsplit
                            scenario=Tsunami.nc
                            SWE_dimsplit=yes
                            dynamic_Disp=yes/no <- if you want dynamic Displacement or not yes=(Dynamic and Pseudo Dynamic) no = (Static and Pseudo Static)
                            parallelization=openmp <- optional
                            compileMode and compiler you are free to choose
