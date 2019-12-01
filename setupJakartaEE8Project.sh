#!/bin/sh
PROJECT_NAME=$1

mvn archetype:generate                                  \
  -DarchetypeGroupId=io.costax                			\
  -DarchetypeArtifactId=jakarta8-essentials-archetype    \
  -DarchetypeVersion=0.0.1                				\
  -DgroupId=io.costax                                	\
  -DartifactId=${PROJECT_NAME}							\
  -Dversion=0.0.1										\
  -Darchetype.interactive=false							\
  --batch-mode

