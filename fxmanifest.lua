fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Mr.Bolux as Bob Togolo'
description 'Job Ammunation'
version '1.0.0'

client_scripts {
    'client/main.lua',
    'client/delivery.lua',
    'client/licence.lua',
}

server_scripts {
    'server/main.lua'
}

shared_scripts {
    -- '@ox_lib/init.lua',
	'config.lua',
	'config/delivery.lua',
	'config/licence.lua',
}

dependencys {
    'togolo_lib',
}