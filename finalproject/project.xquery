declare namespace mods = "http://www.loc.gov/mods/v3";
declare namespace dhiapw = "http://www.dhinitiative.org/dhiapw/";

<essays>
{for $x in collection("file:///c:/Users/Grayson Murphy/Desktop/APWA?select=*.xml")
order by data($x/mods:mods/mods:name/mods:namePart) ascending

return
<essay>
<title>{data($x/mods:mods/mods:titleInfo/mods:title)}</title>
<author>{data($x/mods:mods/mods:name/mods:namePart)}</author>
<author-ethnicity>{data($x/mods:mods/mods:extension/dhiapw:dhiapw/dhiapw:ethnicity_census)}</author-ethnicity>
<length>{data($x/mods:mods/mods:physicalDescription/mods:extent)}</length>
<date>{data($x/mods:mods/mods:recordInfo/mods:recordCreationDate)}</date>
<prison-name>{data($x/mods:mods/mods:extension/dhiapw:dhiapw/dhiapw:prison_name)}</prison-name>
<facility-type>{data($x/mods:mods/mods:extension/dhiapw:dhiapw/dhiapw:facility_type)}</facility-type>
<security>{data($x/mods:mods/mods:extension/dhiapw:dhiapw/dhiapw:prison_security)}</security>
</essay>
}
</essays>

