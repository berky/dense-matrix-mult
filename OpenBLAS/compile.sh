OPENBLAS_LIBDIR=${apps}/openblas/0.2.9.rc2-gnu4.8.2/lib
OPENBLAS_INCDIR=${apps}/openblas/0.2.9.rc2-gnu4.8.2/include

gcc \
-I$OPENBLAS_INCDIR \
-L$OPENBLAS_LIBDIR \
-O4 -msse2 -msse3 -msse4 \
dense_mult.c \
-lopenblas -fopenmp \
-o ap.out

cp ap.out a.out
