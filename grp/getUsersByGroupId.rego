package grp

default getUsersByGroupId = null

getUsersByGroupId =	 [user | user := data.AzureAD.users[_]; user.groupIds[_] == [grp.id | grp := data.AzureAD.groups[_]; contains(grp.fullId, concat("", ["_", input.id]))][_]] {
    data.AzureAD != null
}
