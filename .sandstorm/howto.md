# Yeswiki Sandstorm
## Description
This repository contains the necessary files for using [YesWiki](http://yeswiki.net/cercopitheque) as a [Sandstorm](https://sandstorm.io) package.  
[YesWiki](http://yeswiki.net/cercopitheque) is a Free Software under the GPL licence, made for creating and managing your website, in a collaborative way.  
More information on the [GitHub page](https://github.com/YesWiki/yeswiki) and the [official website](http://yeswiki.net/cercopitheque).

## Local dev from this repository
- I assume you have already installed **vagrant-spk**[^1] on your local machine
- Clone this git repository `git clone https://github.com/YesWiki/yeswiki-sandstorm.git`
- Go to the folder `cd yeswiki-sandstorm`
- Start VM `vagrant-spk up`
- Go on dev mode to get the package `vagrant-spk dev`
- Go to http://local.sandstorm.io:6080/ , the application should be available
- Use Ctrl-C to quit dev mode
- Stop VM `vagrant-spk halt`

## Package creation guide from scratch
*Those are my step by step notes that can be helpfull for creating other php/mysql apps*
### Setup package directory and vagrant-spk VM
- I assume you have already installed **vagrant-spk**[^1] on your local machine
- We will proceed as indicated in the Sandstorm's **Packaging tutorial documentation**[^2] but in the context of YesWiki
- Clone the source repository and remove the .git directory (in order to create an independant git repository later)  
`git clone --depth=1 --branch=cercopitheque https://github.com/YesWiki/yeswiki.git yeswiki-sandstorm`  
`rm -rf !$/.git`
- Go to the directory `cd yeswiki-sandstorm`
- Add the extra themes  
`rm -rf themes`  
`git clone --depth=1 --branch=master https://github.com/YesWiki/yeswiki-themes.git themes`  
`rm -rf !$/.git`
- Setup default lemp server `vagrant-spk setupvm lemp`
- First start of the server (will take some time to create all the needed components) `vagrant-spk up`
- You can go and check http://local.sandstorm.io:6080/ to check if all is ok (choose Dev account Alice, she's the best)
### Create the metas for the sandstorm server
- Create a package definition file `vagrant-spk init`
- Edit `.sandstorm/sandstorm-pkgdef.capnp` with those changes :  
  - Name of the app `appTitle = (defaultText = "YesWiki"),`  
  - Sandstorm internal app version `appVersion = 1,  # Increment this for every release.`  
  - Current app version (we use the date for YesWiki, yeah that's weird but cool) `appMarketingVersion = (defaultText = "Cercopitheque 2016.01.20"),`  
  - Default text for creating a new grain `( title = (defaultText = "New YesWiki site"),`  
  - Official website`website = "http://yeswiki.net",`
  - Code repository `codeUrl = "https://github.com/YesWiki/yeswiki",`
  - License `license = (openSource = gpl2),`
  - Metas for sandstorm's app market `categories = [social,webPublishing],`
  - Author's contact `contactEmail = "mrflos@gmail.com",`
  - Author's signature `pgpSignature = embed "pgp-signature",`  
  You will need to create the `pgp-signature` file in the `.sandstorm` directory, using the following command `echo -n "I am the author of the Sandstorm.io app with the following ID: <app-id>" | gpg --sign > .sandstorm/pgp-signature` don't forget to replace `<app-id>` by the app ID on the begining of the `.sandstorm/sandstorm-pkgdef.capnp` file and install gpg[^3]
  - comment `# upstreamAuthor = "Example App Team",` if you are the original author
  - Author keyring `pgpKeyring = embed "pgp-keyring",`  
  You will need to create the `pgp-keyring` file in the `.sandstorm` directory, using the following command `gpg --export <mail> > .sandstorm/pgp-keyring` don't forget to replace `<mail>` by the mail you used for your gpg ID
  - Relative link to the app description (YesWiki had one in the root folder) `description = (defaultText = embed "../README.md"),`
  - This is hard, describe your app in 15 chars `shortDescription = (defaultText = "All-in-one wiki"),`
  - Screenshots of the app (to place in the `.sandstorm` folder)  
`(width = 800, height = 450, jpeg = embed "screenshot-1.jpg"),`  
`(width = 800, height = 450, jpeg = embed "screenshot-2.jpg"),`  
`(width = 800, height = 450, jpeg = embed "screenshot-3.jpg"),`
  - Changelog for the sandstorm package (to place in the `.sandstorm` folder), I just wrote inside that it is the initial release `changeLog = (defaultText = embed "changelog.md"),`
- Finish, that was long and a little boring.. But it's over! Check your app with `vagrant-spk dev`
- At this point you can create new apps, but because there is no config file for YesWiki, he proposes the installation script, where we should indicate all database server info and populate the database. This must be automated

### Tweak the scripts to get a ready-to-work YesWiki instance
#### Create the config file for the app
As your app directory won't be writable from the sandstorm instance, edit it directly in the good folder (`./wakka.config.php` for YesWiki) with the following tips :
- Mysql server default credentials : host is `localhost`, user is `root`, password is empty (no password needed and still secure! or NSA backdoor, not sure.. ;-) )
- Base url : this is pervert, **you must use a relative url**, because Sandstorm will change all your links
#### Populate the database, create writable folders
 - Create a mysql dump file from a good starting wiki, with a minimum page amount and save it in `.sandstorm/starter-dump.sql`
 - Edit `.sandstorm/launcher.sh` as recommanded in the Sandstorm documentation[^4] :
   - Add the necessary writable folders for YesWiki after the other commands for folder creation :  
`# move storage folders which must be writable to /var`  
`mkdir -p /var/storage`  
`mv /opt/app/cache /var/storage/cache`  
`ln -s /var/storage/cache /opt/app/cache`  
`mv /opt/app/files /var/storage/files`  
`ln -s /var/storage/files /opt/app/files`  
`mv /opt/app/themes /var/storage/themes`  
`ln -s /var/storage/themes /opt/app/themes`  
   - Add this command `mysql --user root --socket /var/run/mysqld/mysqld.sock < /opt/app/.sandstorm/starter-dump.sql` after the commands that start mysql-server
#### YesWiki Specific tweak
 - desactivate Hashcash plugin (not necessary in Sandstorm context, and not working..)

## Create public repository
https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/

## Create apk package file and publish

## Special thanks
Asheesh, KentonV and all the amazingly helpfull community of Sandstorm, you guys rock!

#### References
[^1]: https://docs.sandstorm.io/en/latest/vagrant-spk/installation/
[^2]: https://docs.sandstorm.io/en/latest/vagrant-spk/packaging-tutorial/
[^3]: https://gnupg.org/download/index.html#sec-1-2
[^4]: https://docs.sandstorm.io/en/latest/vagrant-spk/customizing/
