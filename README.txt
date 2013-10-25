===================================
EIONET OTRS SKIN
===================================

Installation
============
In order to install the EIONET OTRS Skin, go to the Custom directory in your OTRS
deployment directory (e.g.: /opt/otrs/Custom)::

$ cd /opt/otrs/Custom
$ git clone https://github.com/eea/eionet.otrs.theme

Edit install.sh and make sure OTRS_USER, OTRS_GROUP and OTRS_ROOT variables are set correctly for your environment, then::

$ sudo ./install.sh

Log into OTRS system with the admin user, go to SysConfig **Core::Web** and set: 
    **Loader::Agent::DefaultSelectedSkin** to eionet
then go to **Frontend::Customer** and set:
    **Loader::Customer::SelectedSkin** to eionet

In order to be able to use our own favicon.ico, we need to change **Frontend::ImagePath** to <OTRS_CONFIG_Frontend::WebPath>skins/Agent/eionet/img/
