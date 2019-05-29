for filename in `find ./ -type f \( -iname \*.yaml -o -iname \*.yml \)` ; do 
  [ -f "${filename}" ] || break
  ./kubeval "${filename}"
done

