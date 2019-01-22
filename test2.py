import bpy, _cycles

prefs = bpy.context.user_preferences.addons['cycles'].preferences
print(prefs.compute_device_type)

for d in prefs.devices:
    print(d.name)
    
  
