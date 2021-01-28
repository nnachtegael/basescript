#-----------------------------------------------------------------------
#
# Basescript functions
#
# The basescript functions were designed to work as abstract function,
# so it could be used in many different contexts executing specific job
# always remembering Unix concept DOTADIW - "Do One Thing And Do It Well"
#
# Developed by
#   Evert Ramos <evert.ramos@gmail.com>
#
# Copyright Evert Ramos
#
#-----------------------------------------------------------------------
#
# Be carefull when editing this file, it is part of a bigger script!
#
# Basescript - https://github.com/evertramos/basescript
#
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
# This function has one main objective:
# 1. Function/Script to create a folder if it does not exists
#
# You must/might inform the parameters below:
# 1. Folder name that should be created
# 2. [optional] (default: ) n/a
#
#-----------------------------------------------------------------------

create_folder()
{
    local LOCAL_FOLDER 

    LOCAL_FOLDER=${1}
    
    [[ $LOCAL_FOLDER == "" ]] && echoerr "Please add an argument to the funcion '${FUNCNAME[0]}'."

    [[ "$DEBUG" == true ]] && echo "Creating folder '$LOCAL_FOLDER'"

    mkdir -p $LOCAL_FOLDER

    return 0
}