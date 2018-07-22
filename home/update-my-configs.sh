tempdir=$(mktemp -d)
git clone https://github.com/x821938/Linux-Setup $tempdir
cp -R $tempdir/home/. ~
rm -rf $tempdir
