# puppet-htop

[![Build Status](https://travis-ci.org/paul91/puppet-htop.png?branch=master)](https://travis-ci.org/paul91/puppet-moduleplate)

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with puppet-htop](#setup)
    * [What puppet-htop affects](#what-puppet-htop-affects)
    * [Setup requirements](#setup-requirements)
    * [Getting started](#getting-started)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Notes](#notes)

## Overview

This Puppet Module can be used to install and manage HTOP,an interactive process viewer for Linux.
    
## Setup

### What puppet-htop affects

* HTOP package installation, removal.
* Can be used to give users a preconfigured htoprc.

### Setup Requirements

A repo that contains the htop package.
	
### Getting started

To install htop and provide a custom configuration for the root user.

```
include htop
```

## Usage

Add a custom htoprc for a specific user:

```
htop::config { 'bob':
  rcfile => 'puppet:///modules/htop/htoprc-custom',
}
```

## Notes

This module should support RedHat and Debian based OS's, but has only been tested on CentOS.
