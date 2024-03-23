# Project 0x0A: Configuration Management

This project focuses on configuration management, encompassing various aspects such as DevOps, SysAdmin, Scripting, and CI/CD. It utilizes Puppet for infrastructure management and task automation.

## Background Context

During my tenure at SlideShare, I contributed to an auto-remediation tool called Skynet, designed to monitor, scale, and fix Cloud infrastructure. Skynet leveraged MCollective, a parallel job-execution system, enabling the execution of commands across one or multiple servers simultaneously. However, a bug in the code resulted in unexpected consequences when 'nil' was sent to the filter method. This inadvertently led to the shutdown of SlideShare's entire document conversion environment, highlighting the importance of robust configuration management practices.

## Resources

- [Intro to Configuration Management](https://www.redhat.com/en/topics/automation/what-is-configuration-management)
- [Puppet Resource Type: File](https://puppet.com/docs/puppet/7/types/file.html)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](https://puppet.com/docs/puppet/7/lang_intro.html)
- [Puppet Lint](https://puppet.com/docs/puppet/7/style_guide.html)
- [Puppet Emacs Mode](https://github.com/voxpupuli/puppet-emacs)

## Requirements

### General
- All files will be interpreted on Ubuntu 20.04 LTS.
- All files should end with a new line.
- A `README.md` file at the root of the project folder is mandatory.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests must run without error.
- Puppet manifests must start with a comment explaining their purpose.
- Puppet manifest files must end with the extension `.pp`.

### Note on Versioning
- Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

## Tasks

### 0. Create a File
- Using Puppet, create a file in `/tmp` with specific permissions, owner, group, and content.

### 1. Install a Package
- Using Puppet, install Flask from pip3 with a specific version.

### 2. Execute a Command
- Using Puppet, create a manifest that kills a process named `killmenow` using the `exec` resource and `pkill`.

## Deadline
Project is to be completed by Mar 23, 2024, 5:00 AM (UTC).

## Repository
- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/Salma-fathi/alx-system_engineering-devops)
- **Directory:** 0x0A-configuration_management
