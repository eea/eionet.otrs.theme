# EIONET OTRS v4 skin & theme

This package contains both customisations for applying the Eionet colour scheme (skin) and changes to the templates to alter the layout of mainly the header (theme). 

## Installation

### 1) Install the skin & theme files
In order to install the EIONET OTRS skin & theme files, go to the Custom directory in your OTRS deployment directory (e.g.: /opt/otrs/Custom):

    $ cd /opt/otrs/Custom
    $ git clone https://github.com/eea/eionet.otrs.theme

Edit the provided install.sh and make sure OTRS_USER, OTRS_GROUP and OTRS_ROOT variables are set correctly for your environment, then run it install the files:

    $ sudo ./install.sh

### 2) Update the OTRS config
Log into OTRS system with an admin user, and in SysConfig update the following settings.

#### Skin:

* Core::Web -> Loader::Agent::DefaultSelectedSkin - set to *"eionet"*.
* Frontend::Customer -> Loader::Customer::SelectedSkin - set to *"eionet"*.
* Frontend::Agent -> AgentLogo - set to *disabled* in order to not display the default OTRS logo.
* Core::Web -> Frontend::ImagePath - set to *"<OTRS_CONFIG_Frontend::WebPath>skins/Agent/eionet/img/"* in order to use the favicon.ico that comes with the skin.

#### Theme:

* Core::Web -> Frontend::Themes - add a new row with key *"EIONET"* and content *"1"* to activate the new theme.
* Core -> DefaultTheme - set to *"EIONET"* to make this theme the default theme, this will apply the theme to all users that have not previously set the Theme preference in their user preferences.
* Core -> DefaultTheme::HostBased - set key to your OTRS helpdesk URL (format: myhelpdesk\\.example\\.com), and content to *"EIONET"* in order to have the default theme setting override user's preferences.

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The OTRS skin & theme (the original code) is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.

See [LICENSE.md](./LICENSE.md) for more information.