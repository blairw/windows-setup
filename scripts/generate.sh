cat ./docs/*.md > ./temp/temp1.md
pandoc ./temp/temp1.md --toc --toc-depth 2 --wrap=none -s -o ./temp/temp2.md
cat ./config/header.md > ./README.md
cat ./temp/temp2.md >> ./README.md

# Clean up
rm ./temp/temp1.md
rm ./temp/temp2.md
