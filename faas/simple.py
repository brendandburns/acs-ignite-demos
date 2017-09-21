def simple(context):
   print context.json
   return {'msg': 'Hello %s' % context.json['name']} 
