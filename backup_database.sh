#!/bin/bash
export PGUSER=odoo
export PGPASSWORD=odoo
export PGHOST=localhost
pg_dump -v -Z9 -Fc Base > /data/odoo/backups/$(date +%Y%m%d_%H%M%S)_MTM.dump
