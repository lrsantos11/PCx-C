
ROOTDIR   = ..

SRCDIR    = ${ROOTDIR}/SRC
MEXDIR    = ${ROOTDIR}/mex

TARGETDIR = ${MEXDIR}

NG_LIB    = ../Ng-Peyton/cholesky.a
PCX_LIB   = libPCx.a
F2C_LIB   = -L../F2C -lf2c

CFLAGS = -g

MEX = mex
MEXDEBUG = -g
MEXOPTS = ${MEXDEBUG} -v -I${SRCDIR} 

mex: ${SRCDIR}/blkLVL.o ${SRCDIR}/Ng-Peyton.o ${TARGETDIR}/${PCX_LIB} 
	$(MEX) $(MEXOPTS) -output PCx PCx_mex.c matPCx_interface.c \
	${SRCDIR}/blkLVL.o ${SRCDIR}/Ng-Peyton.o $(PCX_LIB) \
	$(MISC_OBJS) $(NG_LIB) $(F2C_LIB)

${TARGETDIR}/${PCX_LIB}:
	cd ${SRCDIR}; touch *.c; make TARGETDIR=${TARGETDIR} MEX=MEX objs
	ar r $(PCX_LIB) *.o
	ranlib $(PCX_LIB)

${SRCDIR}/blkLVL.o:
	cd ${SRCDIR}; make TARGETDIR=./ blkLVL.o

${SRCDIR}/Ng-Peyton.o:
	cd ${SRCDIR}; make TARGETDIR=./ Ng-Peyton.o

clean:
	/bin/rm -f *.mex* *.o *.a

