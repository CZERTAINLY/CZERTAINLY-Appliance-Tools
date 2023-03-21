# CZERTAINLY-Appliance-Tools
Debian package with czertainly appliance tools.

## Content of etc/czertainly-ansible

Is created as [git submodule](https://www.vogella.com/tutorials/GitSubmodules/article.html).

### First time initialization
```
cd CZERTAINLY-Appliance-Tools
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-czertainly-branding.git etc/czertainly-ansible/roles/branding
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-http-proxy.git etc/czertainly-ansible/roles/http-proxy
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-postgres.git etc/czertainly-ansible/roles/postgres
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-helm.git etc/czertainly-ansible/roles/helm
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-rke2.git etc/czertainly-ansible/roles/rke2
git submodule add -b develop https://github.com/3KeyCompany/ansible-role-czertainly.git etc/czertainly-ansible/roles/czertainly
```

### Update after checkout
```
cd CZERTAINLY-Appliance-Tools
git submodule update --init --recursive
```

### Update after changes in submodules
```
cd CZERTAINLY-Appliance-Tools
git submodule foreach 'git fetch origin; \
  git checkout $(git rev-parse --abbrev-ref HEAD); \
  git reset --hard origin/$(git rev-parse --abbrev-ref HEAD); \
  git submodule update --recursive; \
  git clean -dfx'
```

## Building package

```
./build-deb.sh
```

Final deb file is moved to current directory to be accessible in
GitHub actions.

## GitHub action configuration

### Secrets

`DEB_REPO_KEY` - private key of the user on `DEB_REPO_HOST`

### Repository Variables

`DEB_REPO_HOST` - hostname of host where repository is installed

`DEB_REPO_USER` - username of user used for publishing Debian package on `DEB_REPO_HOST`

`DEB_REPO_DIRECTORY` - directory where to put a new package (`/var/www/deb.czertainly.com/incoming`)

`DEB_REPO_MANAGER` - script used for managing debian repositoy (`/var/www/deb.czertainly.com/manage-repository`)
