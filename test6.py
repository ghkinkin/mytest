import bpy, _cycles

prefs.compute_device_type = 'CUDA'

bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
for card in bpy.context.user_preferences.addons['cycles'].preferences.devices:
       print(card.name)
       
