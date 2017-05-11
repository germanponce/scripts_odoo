#!/bin/bash
tar -zcf /data/odoo/backups/$(date +%Y%m%d_%H%M%S)_Trabis_Produccion_filestore.tgz /opt/odoo/.local/share/Odoo/filestore/Trabis_Produccion
