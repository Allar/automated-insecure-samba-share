# automated-insecure-samba-share
This script will automatically install Samba and create a share named `Drop` located at `/home/Drop`. This Samba share will have no security and will be completely insecure. You will have full access to this share in Windows without needing credentials, a login, or a password.

# Warning

This will remove all pre-existing Samba shares on the server. This should only ever be used on Ubuntu Servers that are __non-critical__. The machines you use this on __must be able to be nuked at any time__. This should never be used on a public facing machine as then the entire world may have access to your Samba share and potentially other dangerous things. Use this when you know it is __only you__ or __only a trusted network__ can access this Samba Share.

# Usage

Open a shell on your desired server and run:

```sh
wget https://raw.githubusercontent.com/Allar/automated-insecure-samba-share/master/automated-insecure-samba-share.sh -O automated-insecure-samba-share.sh
chmod +x automated-insecure-samba-share.sh
./automated-insecure-samba-share.sh
```

Running these three commands will set up a Samba share named `Drop` at `/home/Drop` and reboot your server. When your server comes back online, your Samba share should be accessible without any form of credentials, a login, or a password.

If you don't see your Samba share in Windows, try manually navigating a Windows Explorer to `\\YourServerHostName`