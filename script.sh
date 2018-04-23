#!/bin/bash

#Author: Marcelo de Moraes


zip="freepass.zip"
content="p.zip"


while [ "$(echo $content | cut -d "." -f 2)" == "zip" ]
do
	content=$(unzip $zip | grep 'inflating: \| extracting: ' | cut -d " " -f 3 )
	echo "content is $content!"
	echo "removing $zip..."
	rm $zip
	zip=$content
	echo "zip eh $zip"
done

echo "Final file: $content"
