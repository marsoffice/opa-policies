package usr

default getUsersByIds = null

getUsersByIds =	[user | user := data.AzureAD.users[_]; user.id == input.ids[_]] {
    data.AzureAD != null
}