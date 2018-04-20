#!/bin/bash

exec docker run --rm -ti  \
  -p 8888:8888 -p 4040:4040 \
  -v $(pwd):/notebooks \
  jupyter/all-spark-notebook \
  start-notebook.sh --NotebookApp.token='' --NotebookApp.notebook_dir=/notebooks

