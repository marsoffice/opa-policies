package grp

getUsersByGroupId = [g | g := data.AzureAD.groups[_]; g.id == input.id]
