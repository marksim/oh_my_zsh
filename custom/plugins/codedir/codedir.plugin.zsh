c() { cd ~/dev/$1; }
_c() { _files -W ~/dev -/; }
compdef _c c

cr() { cd ~/dev/reqhub/$1; }
_cr() { _files -W ~/dev/reqhub -/; }
compdef _cr cr

cu() { cd ~/dev/upworthy/$1; }
_cu() { _files -W ~/dev/upworthy -/; }
compdef _cu cu
