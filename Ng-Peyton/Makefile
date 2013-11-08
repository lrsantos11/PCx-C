#***********************************************************************
#***********************************************************************
#
#   Version:        0.4
#   Last modified:  January 13, 1995
#   Authors:        Esmond G. Ng and Barry W. Peyton
#
#   Mathematical Sciences Section, Oak Ridge National Laboratoy
#
#***********************************************************************
#***********************************************************************

PCx_ARCH = darwin
NG_LIB = ../Ng-Peyton/cholesky.a
TARGETDIR = .

CFLAGS = -O3  -axSSE4.2 -xSSE4.2   -I../F2C


LIB_FILES = \
 assmb.o btree2.o betree.o bfinit.o blkfct.o blkfc2.o blkslv.o   \
 chordr.o chlsup.o dscal1.o epost2.o etordr.o etpost.o etree.o  \
 fcnthn.o fsup1.o fsup2.o fnsplt.o fntsiz.o genmmd.o gtimer.o  \
 igathr.o inpnv.o invinv.o ldindx.o lstats.o mmdint.o mmdelm.o mmdupd.o \
 mmdnum.o mmpy.o mmpy1.o mmpy2.o mmpy4.o mmpy8.o mmpyi.o ordmmd.o       \
 pchol.o sfinit.o smxpy1.o smxpy2.o smxpy4.o smxpy8.o symfct.o \
 symfc2.o blkslf.o blkslb.o 

include ../MAKEARCH/$(PCx_ARCH).make

cholesky.a: $(LIB_FILES)
	${AR} r cholesky.a $(LIB_FILES)
	$(RANLIB) cholesky.a

main:	${files}
	${CC} -o $@ ${files}

clean:
	\rm -f *.o main cholesky.a
