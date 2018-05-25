#!/bin/bash

# Copyright 2018 The Kubeflow Authors All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Script to autoformat libsonnet files.
# Assumes jsonnet is on the path.
set -ex

# 2 spaces vertical indentation
# Use double quotes for strings
# Use // for comments
jsonnet fmt -i \
  --string-style d \
  --comment-style s \
  --indent 2 $1
