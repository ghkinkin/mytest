import bpy

#bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
#bpy.context.user_preferences.addons['cycles'].preferences.devices[0].use = True

bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
for device in bpy.context.user_preferences.addons['cycles'].preferences.devices:
    if device.type == 'CUDA':
        device.use = True

bpy.context.scene.cycles.device = 'GPU'
