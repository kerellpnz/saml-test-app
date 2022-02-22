
keytool -keyalg RSA -keysize 2048 -genkeypair -alias apollo -keypass nalle123 -keystore saml-keystore.jks #Generate key store

keytool -export -keystore saml-keystore.jks -alias apollo -file apollo.pem -rfc #Get Signature Certificate

keytool -import -alias okta -file okta.cert -keystore saml-keystore.jks -storepass nalle123 -noprompt #???