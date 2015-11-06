# automated-insecure-samba-share
This script will automatically install Samba and create a share named Drop located at /home/Drop

# Warning

This will remove all pre-existing Samba shares on the server. This should only ever be used on Ubuntu Servers that are __non-critical__. The machines you use this on __must be able to be nuked at any time__. This should never be used on a public facing machine as then the entire world may have access to your Samba share and potentially other dangerous things. Use this when you know it is __only you__ or __only a trusted network__ can access this Samba Share.

# Usage