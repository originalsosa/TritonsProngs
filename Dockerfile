ARG BASE_IMAGE=mambaorg/micromamba

FROM ${BASE_IMAGE} as builder

USER conda

ENV CONDA_ENV_NAME=
ENV CONDA_ENV_FILE_PATH=
ENV CONDA_PACKED_OUTPUT_FILE_PATH=

CMD conda env create -f $CONDA_ENV_FILE_PATH; conda activate $CONDA_ENV_NAME && conda-pack -o $CONDA_PACKED_OUTPUT_FILE_PATH
