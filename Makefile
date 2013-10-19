SHELL=/bin/sh

CC = icc

# default
PCx:: 
	cd SRC;       ${MAKE}

PCx_NgPeyton:: 
	cd SRC;       ${MAKE} PCx_NgPeyton

PCx_wssmp:: 
	cd SRC;       ${MAKE} PCx_wssmp

PCx_mysolver:: 
	cd SRC;       ${MAKE} PCx_mysolver

mex::
	cd mex;       ${MAKE} mex

clean:
	/bin/rm -f PCx *.log ./Ng-Peyton/*.[oa] ./SRC/*.[oa] 
	/bin/rm -f ./F2C/*.[oa] ./mex/*.[oa] ./mex/*.mex*
