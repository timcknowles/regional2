Ruby Call to openEHR GET Composition  - FLAT JSON format
```
require 'uri'
require 'net/http'

url = URI("https://cdr.code4health.org/rest/v1/composition/5fc275e7-ec9b-468d-b9de-0c237db36276::8d029fef-770d-49f2-9bef-bd1e21af9457::1?format=FLAT")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["content-type"] = 'application/json'
request["authorization"] = 'Basic aWFubWNuaWNvbGxfOGQwMjlmZWYtNzcwZC00OWYyLTliZWYtYmQxZTIxYWY5NDU3OiQyYSQxMCQ2MTlraQ=='
request["ehr-session-disabled"] = '{{Ehr-Session}}'
request["auth-token"] = '{{Auth-Token}}'

response = http.request(request)
puts response.read_body
```

Result from openEHR GET Composition - FLAT JSON format
```
{
    "meta": {
        "href": "http://cdr.code4health.org/rest/v1/composition/5fc275e7-ec9b-468d-b9de-0c237db36276::8d029fef-770d-49f2-9bef-bd1e21af9457::1"
    },
    "format": "FLAT",
    "templateId": "HDAY - Epidural Report.v0",
    "composition": {
        "epidural_repport/_uid": "5fc275e7-ec9b-468d-b9de-0c237db36276::8d029fef-770d-49f2-9bef-bd1e21af9457::1",
        "epidural_repport/language|code": "en",
        "epidural_repport/language|terminology": "ISO_639-1",
        "epidural_repport/territory|code": "GB",
        "epidural_repport/territory|terminology": "ISO_3166-1",
        "epidural_repport/context/_health_care_facility|id": "9091",
        "epidural_repport/context/_health_care_facility|id_scheme": "HOSPITAL-NS",
        "epidural_repport/context/_health_care_facility|id_namespace": "HOSPITAL-NS",
        "epidural_repport/context/_health_care_facility|name": "Hackday Hospital",
        "epidural_repport/context/start_time": "2017-11-25T16:05:20.237Z",
        "epidural_repport/context/setting|code": "238",
        "epidural_repport/context/setting|value": "other care",
        "epidural_repport/context/setting|terminology": "openehr",
        "epidural_repport/procedure:0/ism_transition/current_state|code": "245",
        "epidural_repport/procedure:0/ism_transition/current_state|value": "performed",
        "epidural_repport/procedure:0/ism_transition/current_state|terminology": "openehr",
        "epidural_repport/procedure:0/intervention": "Epidural",
        "epidural_repport/procedure:0/complication:0": "Accidental dural puncture",
        "epidural_repport/procedure:0/indication:0": "Emergency Caesarian Section",
        "epidural_repport/procedure:0/epidural_detail:0/number_of_attempts": 2,
        "epidural_repport/procedure:0/epidural_detail:0/spinal_level|code": "at0004",
        "epidural_repport/procedure:0/epidural_detail:0/spinal_level|value": "L3/4",
        "epidural_repport/procedure:0/epidural_detail:0/spinal_level|terminology": "local",
        "epidural_repport/procedure:0/epidural_detail:0/approach|code": "at0007",
        "epidural_repport/procedure:0/epidural_detail:0/approach|value": "Midline",
        "epidural_repport/procedure:0/epidural_detail:0/approach|terminology": "local",
        "epidural_repport/procedure:0/epidural_detail:0/depth|magnitude": 20,
        "epidural_repport/procedure:0/epidural_detail:0/depth|unit": "cm",
        "epidural_repport/procedure:0/time": "2016-12-25T16:05:20.242Z",
        "epidural_repport/procedure:0/language|code": "en",
        "epidural_repport/procedure:0/language|terminology": "ISO_639-1",
        "epidural_repport/procedure:0/encoding|code": "UTF-8",
        "epidural_repport/procedure:0/encoding|terminology": "IANA_character-sets",
        "epidural_repport/service_request:0/_uid": "09bebe80-469f-4fca-85bc-626acf432768",
        "epidural_repport/service_request:0/request:0/service_name": "Epidural Review",
        "epidural_repport/service_request:0/request:0/timing": "R5/2017-11-25T16:00:00Z/P1M",
        "epidural_repport/service_request:0/request:0/timing|formalism": "timing",
        "epidural_repport/service_request:0/narrative": "Epidural review",
        "epidural_repport/service_request:0/language|code": "en",
        "epidural_repport/service_request:0/language|terminology": "ISO_639-1",
        "epidural_repport/service_request:0/encoding|code": "UTF-8",
        "epidural_repport/service_request:0/encoding|terminology": "IANA_character-sets",
        "epidural_repport/service:0/ism_transition/current_state|code": "529",
        "epidural_repport/service:0/ism_transition/current_state|value": "scheduled",
        "epidural_repport/service:0/ism_transition/current_state|terminology": "openehr",
        "epidural_repport/service:0/service_name": "Epidural Review",
        "epidural_repport/service:0/scheduled_date_time": "2017-01-01T16:05:20.243Z",
        "epidural_repport/service:0/time": "2017-11-25T16:05:20.243Z",
        "epidural_repport/service:0/language|code": "en",
        "epidural_repport/service:0/language|terminology": "ISO_639-1",
        "epidural_repport/service:0/encoding|code": "UTF-8",
        "epidural_repport/service:0/encoding|terminology": "IANA_character-sets",
        "epidural_repport/composer|name": "Dr Tim"
    },
    "deleted": false,
    "lastVersion": true
}
```
