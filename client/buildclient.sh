npm run build

mkdir -p ../server/src/main/resources/static
cp --recursive build/* ../server/src/main/resources/static/
