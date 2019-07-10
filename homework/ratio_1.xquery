declare namespace tei = "http://www.tei-c.org/ns/1.0";

(: This is an inline comment, use it to explain your code :)
(: The following line makes the selection of the document explicit so it chooses my file, not e.g. damians:)
let $doc := doc('class_dp.xml')

let $total := count($doc//tei:person)
let $female := count($doc//*[@sex = "f"])



return
    <ratio>{$female div $total * 100} % female</ratio>