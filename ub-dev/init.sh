#!/bin/bash

sudo cp -R ~/host/.ssh ~
sudo chown -R tom:tom ~/.ssh
sudo chmod -R 700 ~/.ssh

cp ~/host/.gitcon* ~/
sudo chown -R tom:tom ~/.gitcon*
