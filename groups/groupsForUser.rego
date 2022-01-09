package groups

default groupsForUser = []

groupsForUser {
	_ := data.AzureAD.groups
}
