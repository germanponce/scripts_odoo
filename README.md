# scripts_odoo
Scripts de prueba para guardar respaldos

Se deben poner en la carpeta /data/odoo

Dentro de esa misma ruta crear la carpeta llamada backups

Editar el crontab de linux y añadir

10 1 * * * root /data/odoo/backup_database.sh
10 1 * * * root /data/odoo/backup_filestore.sh
30 3 * * * root /data/odoo/liberar_memoria.sh
0  6 * * * root /data/odoo/eliminar_respaldos_antiguos.sh


por ultimo 

modificar los archivos para poner los datos correctos del cliente

archivo backup_database.sh

pg_dump -v -Z9 -Fc Base_a_respaldas > /data/odoo/backups/$(date +%Y%m%d_%H%M%S)_Nombre_Base_para_Backup.dump

archivo backup_filestore.sh

tar -zcf /data/odoo/backups/$(date +%Y%m%d_%H%M%S)_Nombre_Archivo_Respaldo.tgz /odoo/.local/share/Odoo/filestore/Base_Datos


archivo backup_odoo_instance

tar -zcf /data/odoo/backups/$(date +%Y%m%d_%H%M%S)_Odoo.tgz /odoo/odoo-server + rutas de modulos a respaldar

