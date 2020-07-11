#!/bin/bash

cd client
./buildclient.sh
cd ..
gradle jibDockerBuild
