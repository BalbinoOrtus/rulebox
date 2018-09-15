component extends="rulebox.models.RuleBook"{

	function defineRules(){
		addRule(
			newRule()
			.when( function( facts ){
				return facts.keyExists( "hello" ) && facts.keyExists( "world" );
			})
			.using( "hello" ).then( function( facts ){
				systemOutput( facts.hello );
			} )
			.using( "world" ).then( function( facts ){
				systemOutput( facts.world );
			} )
		);

		// Add Rule With Closure Syntax
		addRule( function( rule ){
			rule
			.when( function( facts ){
				return facts.keyExists( "hello" ) && facts.keyExists( "world" );
			})
			.using( "hello" ).then( function( facts ){
				systemOutput( facts.hello );
			} )
			.using( "world" ).then( function( facts ){
				systemOutput( facts.world );
			} );
		} );
	}


}