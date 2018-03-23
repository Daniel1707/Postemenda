require '../../lib/requests'
require 'json'

header = Hash.new
header[:path] = 'https://homolog.moip.com.br/v2/entries?filters=event::eq(PAY-AELOGYEAJWT4)'
header[:body] = ''
header[:authorization] = 'Basic  NVFFUzVLR1I5Tk5FMDA4RVVGWlJEQ0RCTk8xVkhDRVo6UlRLSUNDTDFOSE4xQVZJTlVUTkJYWFFPTUxQNVdSWExVM0JUVVVLUw=='

body = ''

path = 'https://homolog.moip.com.br/v2/entries?filters=event::eq(PAY-AELOGYEAJWT4)'

test = Requests.send('get', header, body, path)

p test.to_json
