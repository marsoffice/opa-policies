package groups

default groupsForUser = []

groupsForUser {
	result := data.AzureAD.groups
}
