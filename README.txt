===================================
EIONET OTRS SKIN
===================================

Installation
============
In order to install the EIONET OTRS Skin, go to the Custom directory in your OTRS
deployment directory (e.g.: /opt/otrs/Custom)::

$ git clone https://github.com/eea/eionet.otrs.theme
$ chown -R <otrs_user>:<web_group> eionet.otrs.theme
$ ln -s /opt/otrs/Custom/eionet.otrs.theme/EionetSkin.xml /opt/otrs/Kernel/Config/Files/
$ ln -s /opt/otrs/Custom/eionet.otrs.theme/skins/Agent/eionet /opt/otrs/var/httpd/htdocs/skins/Agent
$ ln -s /opt/otrs/Custom/eionet.otrs.theme/skins/Customer/eionet /opt/otrs/var/httpd/htdocs/skins/Customer

Log into OTRS system with the admin user, go to SysConfig Core::Web and set: 
    **Loader::Agent::DefaultSelectedSkin** to eionet
then go to Frontend::Customer and set:
    **Loader::Customer::SelectedSkin** to eionet
