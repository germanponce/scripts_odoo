#!/bin/bash
pg_dump -v -Z9 -Fc Trabis_Produccion > /data/odoo/backups/$(date +%Y%m%d_%H%M%S)_Trabis_Produccion.dump
