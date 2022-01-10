package grp


getUserGroupsByUserId = [grp | grp := data.AzureAD.groups[_]; grp.id == [user.groupIds[_] | user := data.AzureAD.users[_]; user.id == input.id][_]] {
    data.AzureAD != null
}