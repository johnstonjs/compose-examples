# Nextcloud Configuration

## LDAP

| Setting | Value |
| --- | --- |
| Server | ldaps://ldap.example.com |
| Port | 636 |
| Client ID | cn=nextcloud,ou=Clients,dc=example,dc=com |
| Password | Stored in Bitwarden |
| Base DN | ou=People,dc=example,dc=com |
| Users Query | (memberOf=cn=nextcloud,ou=Lists,dc=example,dc=com) |
| LDAP / AD Username | TRUE |
| Groups Query | objectClass=posixGroup |
| Advanced / Directory / Base Group Tree | ou=Groups,dc=example,dc=com |
| Expert / UUID Attribute for Users | uid |
