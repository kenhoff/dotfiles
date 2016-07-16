# To boldly go where no dotfiles have gone before!

echo "Starting..."

files=`find . -type f -name "*" -not -name .DS_Store -not -name .gitignore -not -name engage.sh -not -path "./.git/*"` # ignore .git folder, .DS_Store, .gitignore, this file

for file in $files; do
	if [[ -d "$file" ]]; then
		# if file is a directory, symlink all of the files within it, to the appropriate paths
		echo "$file is a directory!"
	else
		# if file is not a directory, just symlink that shit
		echo "$file"
		newFile="$(echo $file | sed "s/\.\/\(.*\)/\1/g")" # dark magic!
		echo "Symlinking $newFile..."
		sourceFile="$(pwd)/$newFile"
		targetFile=$HOME/$newFile
		ln -fs $sourceFile $targetFile
		echo "$targetFile symlinked to $sourceFile"
	fi
done

echo "Finished!"
