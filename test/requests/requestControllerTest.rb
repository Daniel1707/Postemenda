require '../../controllers/request_controller'

header = Hash.new

#header[:body] = ''
header[:authorization] = 'Basic  NVFFUzVLR1I5Tk5FMDA4RVVGWlJEQ0RCTk8xVkhDRVo6UlRLSUNDTDFOSE4xQVZJTlVUTkJYWFFPTUxQNVdSWExVM0JUVVVLUw=='

body = ''

path = 'https://homolog.moip.com.br/v2/entries?filters=event::eq(PAY-AELOGYEAJWT4)'

nome = RequestController.new("get", header, body, path)

#type, headers, body, path
