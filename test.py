import bpy, _cycles

bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
bpy.context.user_preferences.addons['cycles'].preferences.compute_device = 'CUDA_MULTI_2'

print(_cycles.available_devices())
bpy.context.user_preferences.system.compute_device = 'BLABLABLA'
