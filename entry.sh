#!/bin/sh

echo "Get journey"
go get github.com/kabukky/journey
cd $GOPATH/src/github.com/kabukky/journey
git submodule update --init --recursive
echo "Build journey"
go build
echo "Copy journey files"
cp ./journey /build_data/
cp ./content/ /build_data/
cp "./built-in/" /build_data/
cp config.json /build_data/

echo "All done. Congrats!"