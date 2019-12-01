#!/bin/sh

if [ -z  "$1" ]
then
	echo "Please invoke with setupJakartaEE8Project.sh PROJECT_NAME"
	exit 1
fi  

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

