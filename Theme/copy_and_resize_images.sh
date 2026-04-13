#/bin/bash
for i in ../Applications/**/*.png; do
	[ -f "$i" ] || continue
	filename=$(basename "$i")
	echo $filename
	magick "$i" -resize 128x128 ./Applications/128x128/${filename// /-}
done

for i in ../Places/*.png; do
	[ -f "$i" ] || continue
	filename=$(basename "$i")
	echo $filename
	magick "$i" -resize 128x128 ./Places/128x128/${filename// /-}
done
