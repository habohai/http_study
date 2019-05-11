-- Copyright (C) 2019 by chrono

local ssl = require "ngx.ssl"

ngx.say("scheme: ", ngx.var.scheme)


--local name, err = ssl.server_name()
--ngx.say("sni: ", name)

ngx.say("tls: ", ssl.get_tls1_version_str())
ngx.say('server suite: ', ngx.var.ssl_cipher)

ngx.say("http version: ", ngx.req.http_version())

-- h2: http2 with ssl
-- h2c: http2 with cleartext
ngx.say("http/2 tag: ", ngx.var.http2)
