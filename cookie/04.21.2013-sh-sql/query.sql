select
document.documentid,
property.propertyvalue
from
document 
left join documenttype on document.documenttype = documenttype.documenttypeid
left join property on document.documentid = property.documentid
left join propertytype on property.propertytype = propertytype.propertytypeid 
where 
documenttype.documenttypename in ('PromissoryNotesNewLoan', 'PromissoryNotesTopUp') AND
propertytype.propertytypename = 'greenback_PromissoryNoteReferenceNumber'
;
