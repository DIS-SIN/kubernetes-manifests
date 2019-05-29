for filename in `find . ! -name '.travis.yml' -type f  \( -iname \*.yaml -o -iname \*.yml \)` ; do
  [ -f "${filename}" ] || break
  kubeval "${filename}"
  if [ $? != 0 ] ; then
    echo "${filename}: Failed." && break
  fi
done

