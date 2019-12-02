#!/bin/bash


function list_files_available {
    echo "Following files are queued to release:"
    ls queue/$1
}

function get_next_version_number {
    max=$(ls release/$1 | cut -d_ -f1 | sort -k1 -n | tail -1)
    echo `expr $max + 1`
}

function do_svn_mv {
    git mv queue/$1/$2 release/$1/$3\_$2 
    git commit -m "dbmrelease: moving queue/$1/$2 to release/$1/$3\_$2"
    git push origin master
    echo "Moved queue/$1/$2 to release/$1/$3\_$2"
}

function release {
    if [ -d /tmp/dbm/dbmdata/.git ]; then
       cd /tmp/dbm/dbmdata
       git stash
       git reset --hard origin/master
       git pull
    else
       rm -rf /tmp/dbm/
       mkdir -p /tmp/dbm/
       cd /tmp/dbm/
       git clone https://github.com/Capillary/dbmdata.git
       cd /tmp/dbm/dbmdata
    fi;
    echo "Select database to update:";
	#some statements are to be deleted.
	ls release/ | cut -d "/" -f1

    read db
    list_files_available $db
    echo "Select file to release:"
    read release_file
    for i in $release_file
    do
	    ver=$(get_next_version_number $db)
	    echo "Releasing to version $ver"
	    echo "Override? (y/n):"
	    read override
	    if [ "$override" == "y" ]
	    then
		    echo "Enter target version:"
		    read ver
	    fi
        do_svn_mv $db $i $ver
    done
    echo "done"
}

release