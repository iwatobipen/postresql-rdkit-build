cmake -DPy_ENABLE_SHARED=1 \
  -DRDK_INSTALL_INTREE=ON \
  -DRDK_INSTALL_STATIC_LIBS=OFF \
  -DRDK_BUILD_CPP_TESTS=ON \
  -DRDK_BUILD_PGSQL=ON \
  -DRDK_PGSQL_STATIC=ON \
  -DPYTHON_NUMPY_INCLUDE_PATH="$(python -c 'import numpy ; print(numpy.get_include())')" \
  -DBOOST_ROOT="$CONDA_PREFIX" \
  -DPostgreSQL_INCLUDE_DIR=$CONDA_PREFIX/include \
  -DPostgreSQL_TYPE_INCLUDE_DIR=$CONDA_PREFIX/include/server \
  -DPostgreSQL_LIBRARY=$CONDA_PREFIX/lib/libpq.so \
  ..
