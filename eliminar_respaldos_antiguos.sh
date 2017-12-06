#!/bin/bash

find /data/odoo/backups/2017* -mtime +2 -exec rm {} \;
