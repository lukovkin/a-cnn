#/bin/bash
TF_LIB=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')

cd $TF_LIB
ln -s libtensorflow_framework.so.1 libtensorflow_framework.so