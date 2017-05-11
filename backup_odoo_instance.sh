#!/bin/bash
tar -zcf /data/odoo/backups/$(date +%Y%m%d_%H%M%S)_Odoo.tgz /opt/odoo/odoo /opt/odoo/modulos-extra
