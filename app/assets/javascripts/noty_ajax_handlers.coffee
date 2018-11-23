# Хендлеры имеет смысл отдавать в AJAX-запросы следующим образом
#
#  xhr = $.ajax
#    fail: window.notyAjaxFailHanlder
#    error: window.notyAjaxErrorHandler response, message
#
window.notyAjaxErrorHandler = (response) ->

  # readyState Holds the status of the XMLHttpRequest.
  # 0: request not initialized
  # 1: server connection established
  # 2: request received
  # 3: processing request
  # 4: request finished and response is ready

  return if response.readyState == 0
  message = response.responseText || response.statusText
  console.error? "Ошибка загрузки #{message}"
  NotyFlash.error message

window.notyAjaxFailHanlder = (response) ->
  return if response.readyState == 0
  console.error? "Fail загрузки #{response}"
  NotyFlash.error response
