TYPES = ['error', 'success', 'info', 'warning']
TIMEOUT = 5000

window.NotyFlash =
  show: (type, message) -> new Noty(text: message, timeout: TIMEOUT, type: type).show()

for type in TYPES
  window.NotyFlash[type] = (message) -> @show(type, message)
