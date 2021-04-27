# To boldly go where no dotfiles have gone before!

echo "Starting..."

files=`find . -type f -name "*" -not -name .DS_Store -not -name README.md -not -name .gitignore -not -name engage.sh -not -path "./.git/*"` # ignore .git folder, .DS_Store, README.md, .gitignore, this file

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


# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install neovim
brew install fzf
brew install tmux
brew install fish

# connect fish the right way
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

echo "Finished!"


# brew install thefuck
# make the `find` command up top ignore all the non-directory files in this repo
# install node js

