#!/bin/bash

source tanzu-no-internet-env.sh
./gen-publish-images.sh > publish-images.sh
./gen-scripts.sh
