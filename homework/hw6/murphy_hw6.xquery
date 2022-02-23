declare default element namespace "urn:isbn:1-931666-22-9";

<finding-aids>
{for $x in collection("file:///C:\Users\Grayson Murphy\Desktop\xquery-assignment?select=*.xml")

let $endyear := substring-after($x/ead/eadheader/filedesc/titlestmt/titleproper/date, '-')
let $startyear := substring-before($x/ead/eadheader/filedesc/titlestmt/titleproper/date, '-')
let $restrictions := $x/ead/archdesc/accessrestrict/p
let $files := $x/ead/archdesc/dsc/c01/*/@level["file"]

order by count($files) descending
(: 10) Ordering by number of files descending will show the largest collections first. :)

return
<findingaid>
    <unique-ID>{data($x/ead/eadheader/eadid/@identifier)}</unique-ID>
    <title>{substring-before($x/ead/eadheader/filedesc/titlestmt/titleproper, ', ')}</title>
    <numberYears>{number($endyear)-number($startyear)
    }</numberYears>
    <encoder>{substring-after($x/ead/eadheader/filedesc/titlestmt/author, 'by ')}</encoder>
    <times-changed>{count($x/ead/eadheader/revisiondesc/change)}</times-changed>
    <phys-extent>{data($x/ead/archdesc/did/physdesc/extent)}</phys-extent>
    <restrictions>{normalize-space(string-join($restrictions, ' | '))}</restrictions>
    <indexing-terms>{for $name in data($x/ead/archdesc/controlaccess/controlaccess[1]/list/item)
    return <term>{normalize-space($name)}</term>}
    { for $topic in data($x/ead/archdesc/controlaccess/controlaccess[2]/list/item)
    return <topic>{normalize-space($topic)}</topic>
    }</indexing-terms>
    <number-files>{count($files)
    }</number-files>
</findingaid>
}
</finding-aids>