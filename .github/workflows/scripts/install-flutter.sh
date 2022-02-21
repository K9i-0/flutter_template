#!/bin/bash

git clone https://github.com/flutter/flutter.git --depth 1 -b 2.10.2 "$GITHUB_WORKSPACE/_flutter"
echo "$GITHUB_WORKSPACE/_flutter/bin" >> $GITHUB_PATH