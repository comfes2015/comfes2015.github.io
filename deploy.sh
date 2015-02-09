mkdir dist
cd dist
mkdir about
mkdir news
mkdir access
mkdir schedule
mkdir result

cd ..
cp -r css dist/css
cp -r js  dist/js

cd src/jade
jade --pretty news.jade home.jade access.jade schedule.jade about.jade result.jade
mv news.html     ../../dist/news/index.html
mv home.html      ../../dist/index.html
mv access.html   ../../dist/access/index.html
mv schedule.html ../../dist/schedule/index.html
mv about.html    ../../dist/about/index.html
mv result.html   ../../dist/result/index.html
