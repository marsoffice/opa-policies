package grp
getUsersGroupsWithChildrenByUserId = [grp | grp := data.AzureAD.groups[_]; contains(grp.fullId, concat("", ["_", [user.groupIds[_] | user := data.AzureAD.users[_]; user.id == input.id][_]]))]