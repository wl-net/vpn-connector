WLNet VPN Connector
=============

Automatically connects to a selected VPN on a given connection.

There are three states this script will handle with:

* Wireless network (where all traffic should be shuffled over the VPN)
* Wired network (where only resources available only through the VPN should be sent over the VPN)
* VPN network (where you are already connected to a network providing the same resources as the VPN).

Depends on the installation of NetworkManager (including nmcli) and VPN configuration in NetworkManager.

Installation:
------------

To install the script:

    # make install

To undo the installation:

    # make uninstall

Configuration
------------



Usage
-----

Connect to a network in NetworkManager. The script will automatically connect to the VPN.
