package grp

getGroupsByIds = [g | g := data.AzureAD.groups[_]; g.id == input.ids[_]] {
    data.AzureAD != null
}
