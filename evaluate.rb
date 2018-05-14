require 'rack/oauth2'

Rack::OAuth2.debug!

token = '03AJpayVHZB2g7vQDHAyZAV_2siabu_MMezfkhtpNHbromtP-AZCG8SrFT_g8_XiN_MB8YaVaB0lxQ6PRoS0_Q3ut7i0EhTncSPbTUd2Wn6FHTH2t38JNtfM_gV8kqds_FGitebLrvr2CyiSn3NNWufmBkVmPujc6O2mG-6hcmnb9OzVSzS_3Thk2Tb5dFuVFnYTFbLyluveplUef94Iklk8ltGq4-LOxhfoElmFA8cSptCQepLK9JM3U9kmJi-cmEPdtc_hew8wybetTGz5ZiiFD0idRK_1jVUF3OTI2zoWXM46y-AnndVH4lMnW6XTPT9EGZL0AEmSyc'

Rack::OAuth2.http_client.post(
  'https://www.google.com/recaptcha/api/siteverify', {
    secret: '6LetCFkUAAAAALFUB0ZLgTimtOy6A2YlTU3hcwC5',
    response: token
  }
)
