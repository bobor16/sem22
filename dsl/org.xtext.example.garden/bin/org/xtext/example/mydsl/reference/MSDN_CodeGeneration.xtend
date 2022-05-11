package org.xtext.example.mydsl.reference

class MSDN_CodeGeneration {
	/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
/*class MathGenerator extends AbstractGenerator {	

	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		val math = resource.allContents.filter(MathExp).next	
		 fsa.generateFile('''math_expression/«math.name.toFirstUpper».java''', math.compile)		
	}
	

	def compile(MathExp math)'''
		
	package math_expression;
	public class «math.name» {
		
		«FOR variable:math.variables»
			public int «variable.name»;
		«ENDFOR»
		
		«FOR variable:math.functions»
					public int «variable.name»;
		«ENDFOR»
				
//	  	private External external;
	  	//	  	public MathComputation(External external) {
	  	//	    	this.external = external;
	  	//	  	}
	  	
««««««	  	«FOR function:math.functions»
««««««	  		private «function.name» «function.name»2	
««««««	  	«ENDFOR»
«««	  	
«««	  	
««««««	  	«FOR variable:math.variables»
««««««	  		mahthpublic int «variable.name»;
««««««	  	«ENDFOR»
	  	
	  	
		
	  	public void compute() {
	  		«FOR variable:math.variables»
	  		«variable.name» = «variable.expression.compileExpression»;
	  		«ENDFOR»
 
//	    	y = this.external.sqrt(x);
	  	}
		
	  	interface External {
	    	public int sqrt(int n);
	  	}
}
'''
	
	
	// Very smart - Just overload it instead of switch case
	def static dispatch String compileExpression(MathNumber exp) {
		exp.value.toString // not sure if correct way of doing it	
	}

	def static dispatch String compileExpression(Plus exp) {
		return exp.left.compileExpression + ' + ' + exp.right.compileExpression
	}
	
	def static dispatch String compileExpression(Minus exp) {
		return exp.left.compileExpression + ' - ' + exp.right.compileExpression
	}
	
	def static dispatch String compileExpression(Mult exp) {
		return  exp.left.compileExpression + ' * ' + exp.right.compileExpression
	}
	
	def static dispatch String compileExpression(Div exp) {
		return exp.left.compileExpression + ' / ' + exp.right.compileExpression
	}
	
		
	def static dispatch String compileExpression(Paranthesis expr) {
		return '(' + expr.exp.compileExpression + ')' 
	}
	
	
	def static dispatch String compileExpression(LetBinding exp) {
		return exp.body.compileExpression // No idea
	}
	
	
	
	def static dispatch String compileExpression(VariableUse varUse) {
		val ref = varUse.ref
		switch ref{
			VarBinding: return varUse.ref.name
		    LetBinding: return ref.binding.compileExpression 

		    //		    LetBinding: return "let " + ref.name + " = " + ref.binding.compileExpression + " in " 
		    	//+ ref.body.compileExpression//+ varUse.ref.name + " + " +varUse.compileExpression +" in " //+ varUse.ref.body.compileExpression
		}
		
//		exp.ref.computeBinding
		//""
	}
}

	*/
}