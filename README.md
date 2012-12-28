WLNet VPN Connector
=============

Automatically connects to a selected VPN on a given connection.

There are three states this script will deal with:

* Wireless network (where all traffic should be shuffled over the VPN)
* Wired network (where only resources available only through the VPN should be sent over the VPN)
* VPN network (where you are already connected to a network providing the same resources as the VPN).

Depends on the installation of NetworkManager (including nmcli) and VPN configuration in NetworkManager.

Installation
------------

The provided Makefile depends on GNU `make`. If you do not wish to install gnu `make`, then you must copy the 02-vpnup script to /etc/NetworkManager/dispatcher.d/ and set 775 permissions on it.

To install the script:

    # make install

To undo the installation:

    # make uninstall

Configuration
------------

Create two VPN configurations in network manager.

The first one should be your "max security" VPN that will redirect all traffic over the VPN (this will be used on wireless networks)
The other configuration should be your "low security" VPN that will only allow access to your VPN's local resources.

Now run `nmcli con` to see the UUIDs of the connections. Edit the script to add these values.

Now fill in the PRIVATE_NETWORK_UUID with the UUID of your home network (this will prevent unneeded use of your VPN).
Finally, fill in GOOD_SECURITY_NETWORK_UUID with the UUID of your network interface (this is the network where the VPN is used in low security mode).

Usage
-----

Connect to a network in NetworkManager. The script will automatically connect to the VPN.
