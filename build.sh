#! /bin/bash
# mdbuild: a markdown site building helper.

# Preprocessor: Allows use of title override at first line.
md_prep(){
  title=$(head -n 1 $1)
  if ! (echo "$title" | grep "#")
  then title=$(echo $title | sed 's/#//g')
  else tail -n +2 $1 > $1.tmp; i=$1.tmp;
  fi
}

for i in `find -iname \*.md`; do
T="${i%%.md*}.html"
echo "$i -> $T"

md_prep $i

echo '<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="yue.css" />
<title>' "$title" '</title>
<style type="text/css">
body { margin: 0; padding: 0.4em 1em 6em; background: #fff; }
.yue { max-width: 650px; margin: 0 auto; }
.comment { display:none; }
</style>
</head>
<body><!-- Generated using misaka and AOSC /build.sh, from ' "$i" ' -->
<div class="yue">' > $T
misaka $i >> $T
echo '</div></body></html>' >> $T

# Clean your butt
rm *.tmp
done
