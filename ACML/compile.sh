ACML_INCDIR=${apps}/acml/5.3.1/gfortran64/include
ACML_LIBDIR=${apps}/acml/5.3.1/gfortran64/lib
ACML_MP_INCDIR=${apps}/acml/5.3.1/gfortran64_mp/include
ACML_MP_LIBDIR=${apps}/acml/5.3.1/gfortran64_mp/lib

gcc \
-I$ACML_MP_INCDIR \
-L$ACML_MP_LIBDIR \
-O4 -msse2 -msse3 -msse4 \
dense_mult_acml.c \
-lgfortran -lrt -lacml_mp -fopenmp \
-o ap.out

gcc \
-I$ACML_INCDIR \
-L$ACML_LIBDIR \
-O4 -msse2 -msse3 -msse4 \
dense_mult_acml.c \
-lgfortran -lrt -lacml -lpthread \
-o a.out
