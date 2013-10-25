#!/bin/bash

set -e

#The following variables are user configurable
SKIN_PATH=`/bin/pwd`
OTRS_USER="otrs"
OTRS_GROUP="apache"
OTRS_ROOT="/opt/otrs"

#Fix permissions and make the proper symlinks
/bin/chown -R $OTRS_USER:$OTRS_GROUP $SKIN_PATH
/bin/chmod -R 2775 $SKIN_PATH/skins/Agent/eionet
/bin/chmod -R 2775 $SKIN_PATH/skins/Customer/eionet

/bin/ln -s $SKIN_PATH/EionetSkin.xml $OTRS_ROOT/Kernel/Config/Files/ || true
/bin/ln -s $SKIN_PATH/skins/Agent/eionet $OTRS_ROOT/var/httpd/htdocs/skins/Agent || true
/bin/ln -s $SKIN_PATH/skins/Customer/eionet $OTRS_ROOT/var/httpd/htdocs/skins/Customer || true

echo ""
echo "==========================================================="
echo "All set. Now you can use the eionet skin in otrs"
echo "==========================================================="
echo ""
