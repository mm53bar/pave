# Manage EC2 Instances with Pave#

## Usage ##

    bin/pave launch production       # creates an ec2 instance using production config
    bin/pave terminate i-5e09b621    # terminates ec2 instance i-5e09b621
    bin/pave list                    # lists basic info for all ec2 instances 

## Install ##

`cd` to your rails app. Install pave with the following command:

     curl https://raw.github.com/mm53bar/pave/master/install.sh | sh

Now you'll have `bin/pave` in your app folder.

## Config ##

Pave uses Amazon's EC2 API Tools to interact with EC2.  You'll need to make sure that those tools are installed properly and available in your $PATH before Pave will work.  Check out [Setting Up the Amazon EC2 Command Line Tools](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/SettingUp_CommandLine.html) for help with this.

Once that's done, check out your .env.sample file to make sure you fill in the config settings.

### Keypairs ###

I prefer to use my own ssh key rather than an ssh keypair that was generated by Amazon. However, Pave can handle any keypair as long as it is registered with Amazon. For more information on how to register your own ssh key with Amazon, read [Uploading Personal ssh Keys to Amazon EC2](http://alestic.com/2010/10/ec2-ssh-keys).

## What's with the .env files? ##

Storing your config settings in an `.env` file is something I first read about in the [12-Factor app docs](http://www.12factor.net/config). Foreman also supports the `.env` files. When I started looking for a place to store config settings, an `.env` file made more sense than something like a Capfile.

I've also pushed this a bit further when it comes to support multi-stage situations. If you are building a server for a staging environment, create an `.env.staging` file in your app with all of your staging settings. For production, create an `env.production` file.

## Choosing an AMI ##

* [Prefer 64-bit instances](http://alestic.com/2012/03/ec2-64-bit)
* [Prefer EBS Boot instances](http://alestic.com/2012/01/ec2-ebs-boot-recommended)
* [My preference - search for "precise 64 us east ebs"](http://cloud.ubuntu.com/ami/)
