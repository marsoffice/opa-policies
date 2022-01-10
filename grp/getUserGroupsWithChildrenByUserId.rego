package grp

default getUserGroupsWithChildrenByUserId = null

getUserGroupsWithChildrenByUserId = [grp | grp := data.AzureAD.groups[_]; contains(grp.fullId, concat("", ["_", [user.groupIds[_] | user := data.AzureAD.users[_]; user.id == input.id][_]]))] {
    data.AzureAD != null
}