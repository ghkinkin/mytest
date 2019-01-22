import bpy, _cycles

bpy.context.user_preferences.addon['cycles'].preferences.compute_device_type

for card in bpy.context.user_preferences.addons['cycles'].preferences.devices:
       print(card.name)
       
