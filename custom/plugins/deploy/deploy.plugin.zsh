deploy() { 
  if [ "$1" != "" ]
  then
    if [ "$2" != "" ]
    then
      git push && RUBBER_ENV=$1 BRANCH=$2 cap deploy:migrations 
    else
      git push && RUBBER_ENV=$1 cap deploy:migrations 
    fi 
  else
    git push && RUBBER_ENV=production cap deploy:migrations 
  fi
}

backup() { 
  if [ "$1" != "" ]
  then
    RUBBER_ENV=$1 cap backup 
  else
    RUBBER_ENV=production cap backup
  fi
}
