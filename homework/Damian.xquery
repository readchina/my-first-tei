declare namespace tei="http/ns/1.0://www.tei-c.org/ns/1.0";
let $total:=count(//tei:person)
let $female:=count(//*[@sex="female"]) div $total 
let $percent:=$female*100

return
<ratio>{$percent}%</ratio>