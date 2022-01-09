package groups

default groupsForUser = []

groupsForUser {
	data.AzureAD.groups
}
