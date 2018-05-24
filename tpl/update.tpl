
<a name="update"></a>
<h1>Update Item</h1>
<p>does not create the item if item does not exist</p>
<div class="code">
// update multiple attributes in a HASH table
DynamoDB
	.table('users')
	.where('email').eq('test@test.com')
	.return(DynamoDB.ALL_OLD)
	.update({
		password: 'qwert',
		firstname: 'Smith',
		page_views: DynamoDB.add(5), // increment by 5
		list: [5,'a', {}, [] ], // nested attributes
		phones: DynamoDB.add([5,'a']), // push these elements at the end of the array
		unneeded_attribute: DynamoDB.del(),
	}, function( err, data ) {
		console.log( err, data )
	})

// update 1 attribute in a HASH-RANGE table
DynamoDB
	.table('messages')
	.where('to').eq('user1@test.com')
	.where('date').eq( 1375538399 )
	.update({
		seen: true
	}, function( err, data ) {
		console.log( err, data )
	})
</div>
