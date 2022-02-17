declare default element namespace "http://www.tei-c.org/ns/1.0";

<files>
{for $x in collection("file:///c:/Users/Grayson Murphy/Desktop/vwwp_tei?select=*.xml")
order by count($x/TEI/text//pb) descending 

return
<file>
<idno>{data($x/TEI/@xml:id)}</idno>
<title>{string-join(data($x/TEI/teiHeader/fileDesc/titleStmt/title),'; ')}</title>
<title-count>{count($x/TEI/teiHeader/fileDesc/titleStmt/title)}</title-count>
<author>{data($x/TEI/teiHeader/fileDesc/titleStmt/author)}</author>
<keywords>{string-join(data($x/TEI/teiHeader/profileDesc/textClass/keywords/list/item/term),'; ')}</keywords>
<keyword-count>{count($x/TEI/teiHeader/profileDesc/textClass/keywords/list/item/term)}</keyword-count>
<chapter-count>{count($x/TEI/text//div[@type="chapter"])}</chapter-count>
<paragraph-count>{count($x/TEI/text//div/p)}</paragraph-count>
<page-count>{count($x/TEI/text//pb)}</page-count>
<encoders>
{for $name in  $x//respStmt/name

return
<name>{data($name)}</name>
}
</encoders>
</file>
}
</files>
