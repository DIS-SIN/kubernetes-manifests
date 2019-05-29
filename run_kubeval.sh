for filename in `find . ! -name '.travis.yml' -type f  \( -iname \*.yaml -o -iname \*.yml \)`
  [ -f "${filename}" ] || break
  ./kubeval "${filename}"
  if [ $? != 0 ] ; then
    echo 
    echo "${filename}: Failed." && break
  fi
done

