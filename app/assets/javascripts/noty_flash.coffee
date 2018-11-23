#= require noty
#

TYPES = ['error', 'success', 'info', 'warning']
TIMEOUT = 5000

window.NofyFlash =
  show: (type, message) -> new Noty(text: message, timeout: TIMEOUT, type: type).show()

for type in TYPES
  window.NofyFlash[type] = (message) -> @show(type, message)
