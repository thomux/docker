#!/bin/bash

cd ~/work

repo init -u git@gitext.elektrobitautomotive.com:ICAS1/baseline.git -b devel -m system.xml -g default,sourcecode
repo sync
repo forall -c git lfs pull
