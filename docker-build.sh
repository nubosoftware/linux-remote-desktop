#!/bin/bash

# build the bootstrap docker container

TAG=""

while [[ $# -gt 0 ]]; do
  case $1 in
    -t|--tag)
      TAG="$2"
      shift # past argument
      shift # past value
      ;;
    *)
      echo "Unknown option $1"
      exit 1
      ;;
  esac
done


PRODUCT="$(npm pkg get name | tr -d '"')"
VER="$(npm pkg get version | tr -d '"')"
BASE_TAG="${PRODUCT}_${VER}"
echo "BASE_TAG: $BASE_TAG, PRODUCT: $PRODUCT"
build_id=$(git log $BASE_TAG..HEAD --oneline | wc -l)
build_id=$(echo $build_id +1 | bc)
if [ "$build_id" -lt "1" ]
then
  echo "Base tag not found in git: $BASE_TAG"
  exit 1
fi
VERTAG="$VER-$build_id"
echo "Building image $PRODUCT:$VERTAG"

docker build . -t $PRODUCT:$VERTAG --build-arg BUILD_VER=$VERTAG --no-cache --pull

echo "Publish to docker hub"
docker tag $PRODUCT:$VERTAG nubosoftware/$PRODUCT:$VERTAG
docker push nubosoftware/$PRODUCT:$VERTAG
docker tag $PRODUCT:$VERTAG nubosoftware/$PRODUCT:$VER
docker push nubosoftware/$PRODUCT:$VER
if [ -z "$TAG" ]
then
      echo "No need to update speific tag"
else
      echo "Publish nubosoftware/$PRODUCT:$TAG"
      docker tag $PRODUCT:$VERTAG nubosoftware/$PRODUCT:$TAG
      docker push nubosoftware/$PRODUCT:$TAG
fi


