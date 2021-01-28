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
# 1. Check if there is an .env file in the current folder  
#
# You must/might inform the parameters below:
# 1. n/a
# 2. [optional] (default: ) n/a
#
#-----------------------------------------------------------------------

checklocalenvfile() 
{
    [[ "$DEBUG" == true ]] && echo "Check if local '.env' file is set."

    if [[ -e .env ]]; then
        source .env
    else 
        MESSAGE="'.env' file not found! \n\n Please check!"
        return 1
    fi
}