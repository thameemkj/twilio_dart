echo "Adding all..."
git add *
echo "Done"
echo "Commiting..."
git commit -m "$(date +"%d/%m/%y %H:%M") Commit message";
echo "Done"
echo "Pushing..."
git push -f -u development development
echo "Done"
echo "End"
