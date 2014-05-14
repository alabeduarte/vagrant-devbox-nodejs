#!/bin/bash

echo 'Prepare to install required gems'
bundle install

echo 'Prepare to install cookbooks dependencies'
librarian-chef install

# echo 'Prepare to install latest chef version to vagrant instance'
# vagrant plugin install vagrant-omnibus