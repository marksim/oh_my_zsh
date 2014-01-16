deploy() { 
  if [[ -n $(git remote -v | grep heroku) ]]
  then
    if [ "$1" != "production" ]
    then
      if [ "$1" != "" ]
      then
        git push origin && git push $1 $1:master
      else
        git push origin && git push staging staging:master
      fi 
    else
      git push origin && git push production
    fi
  else
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
