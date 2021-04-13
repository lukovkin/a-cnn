FROM nvcr.io/nvidia/tensorflow:21.03-tf1-py3

WORKDIR /app

COPY ./ /app

WORKDIR /app/tf_ops
RUN ./tf_link.sh

WORKDIR /app/tf_ops/3d_interpolation
RUN ./tf_interpolate_compile.sh

WORKDIR /app/tf_ops/grouping_ring
RUN ./tf_grouping_ring_compile.sh

WORKDIR /app/tf_ops/ordering
RUN ./tf_ordering_compile.sh

WORKDIR /app/tf_ops/sampling
RUN ./tf_sampling_compile.sh

WORKDIR /app

CMD /bin/bash
