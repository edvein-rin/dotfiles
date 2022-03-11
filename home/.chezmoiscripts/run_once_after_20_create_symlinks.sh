#!/bin/bash

create_folder_symlink () {
    # create_folder_symlink FOLDER LINK_NAME

    if [ -d $1 ]; then
        {
            ln -s $1 $2
        } || {
            echo "WARNING Symlink \"$2\" is already created"
        }
    else
        echo "ERROR Can't create \"$2\" symlink: \"$1\" folder doesn't exist"
        exit 1
    fi
}

echo "INFO Creating cloud folders symlinks"
create_folder_symlink ~/cloud/.vpn .vpn
create_folder_symlink ~/cloud/.ssh .ssh
create_folder_symlink ~/cloud/pictures pictures
create_folder_symlink ~/cloud/documents documents
create_folder_symlink ~/cloud/university university
