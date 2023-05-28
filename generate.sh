#!/bin/sh
set -e

echo "*** Generate Webpages ***"
python scripts/automate.py
find docs/ -name '*.md' -exec sed -i 's!https://sampleprograms\.io/!https://rzuckerm.github.io/sample-programs-website-copy/!g' '{}' ';'

echo ""
echo "*** Generate Images ***"
sources=sources/images/
images=docs/assets/images/generated/
logo=../icon-small.png
rm -rf $images
mkdir -p $images
for file in "$sources"*
do
    echo "- Processing ${file}"
    image-titler --path "$file" --output "$images" --logo "$images$logo" --title " "
    filename=$(basename "$file")
    edit=$(cd "$images" && ls -t | head -n1)
    mv "$images$edit" "$images$filename"
done

echo ""
echo "*** Build With Jekyll ***"
export JEKYLL_VERSION=4.2.2
docker run --rm \
    -e "JEKYLL_UID=$(id -u)" \
    -e "JEKYLL_GID=$(id -g)" \
    -v "$PWD/docs:/srv/jekyll:Z" \
    -w "/srv/jekyll" \
    -it jekyll/jekyll:$JEKYLL_VERSION \
    bash -c "bundle install && jekyll build -V --config _config.yml"

echo ""
echo "*** Change Base URL For Generated Files ***"
find docs/_site -type f -name '*.html' -exec sed -i 's!https://rzuckerm\.github\.io/sample-programs-website-copy/!http://localhost:8000/!g' '{}' ';'

echo ""
echo "*** Start Webserver ***"
cd docs/_site
python -m http.server >/dev/null &
pid=$!
trap "printf '\n\n*** Kill webserver (PID %s) ***\n' $pid; \
    kill $pid; \
    cd ..; \
    rm -rf _site languages projects assets/images/generated ../sources/generated" SIGINT SIGHUP SIGABRT
sleep 5

echo ""
echo "*** Open Index ***"
echo "Press Ctrl+C to exit"
xdg-open "http://localhost:8000/index.html"
sleep infinity
