#!/bin/bash

cd cmmc_submit
git checkout $1
cd ..
rm -rf cmmc_submit/src
cp -r build/educg_submit cmmc_submit/src
rm -rf cmmc_submit/src/compiler cmmc_submit/src/build
cp cmmc_submit/src/cmmc/Driver/Target_$1.hpp cmmc_submit/src/cmmc/Driver/Target.hpp
date > cmmc_submit/timestamp
cd cmmc_submit
git add .
git commit -m "sync $(date)"
git push -u origin $1
