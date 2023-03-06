# CZERTAINLY-Appliance-Tools
Debian package with czertainly appliance tools.

# 
Content of `/etc/czertainly-ansible` directory for CZERTAINLY appliance.

git submodule [howto](https://www.vogella.com/tutorials/GitSubmodules/article.html#delete-a-submodule-from-a-repository).

## Intialization was done:
```
cd CZERTAINLY-Appliance-Tools
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-czertainly-branding.git etc/czertainly-ansible/roles/branding
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-http-proxy.git etc/czertainly-ansible/roles/http-proxy
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-postgres.git etc/czertainly-ansible/roles/postgres
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-helm.git etc/czertainly-ansible/roles/helm
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-rke2.git etc/czertainly-ansible/roles/rke2
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-czertainly.git etc/czertainly-ansible/roles/czertainly
```

## Update after checkout
```
git submodule update --init --recursive -j 8
```
