fx_version 'cerulean'

games { 'gta5' }

author 'Daniel Bruno <danielbrunogbs@gmail.com>'
description 'Porsche Taycan'
version '1.0.0'
 
files {
    'vehicles.meta',
    'carvariations.meta',
    'carcols.meta',
    'handling.meta',
    'vehiclelayouts.meta',
    'dlctext.meta'
}
 
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'vehiclelayouts.META'
 
-- client_script 'vehicle_names.lua'