package grp

default getGroupsByIds = null

getGroupsByIds = [g | g := data.AzureAD.groups[_]; g.id == input.ids[_]] {
    data.AzureAD != null
}
