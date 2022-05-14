package org.xtext.example.mydsl.reference

class Tutorial_CodeGeneration {
	/* 

import com.google.inject.Inject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import org.eclipse.xtext.naming.IQualifiedNameProvider
import org.example.domainmodel.domainmodel.Entity
import org.example.domainmodel.domainmodel.Feature
 
class DomainmodelGenerator extends AbstractGenerator {
 
    @Inject extension IQualifiedNameProvider
 
    override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
        for (e : resource.allContents.toIterable.filter(Entity)) {
            fsa.generateFile(
                e.fullyQualifiedName.toString("/") + ".java",
                e.compile)
        }
    }
 
    private def compile(Entity e) '''
        �IF e.eContainer.fullyQualifiedName !== null�
            package �e.eContainer.fullyQualifiedName�;
        �ENDIF�
        
        public class �e.name� �IF e.superType !== null
                �extends �e.superType.fullyQualifiedName� �ENDIF�{
            �FOR f : e.features�
                �f.compile�
            �ENDFOR�
        }
    '''
 
    private def compile(Feature f) '''
        private �f.type.fullyQualifiedName� �f.name�;
        
        public �f.type.fullyQualifiedName� get�f.name.toFirstUpper�() { 
            return �f.name�;
        }
        
        public void set�f.name.toFirstUpper�(�f.type.fullyQualifiedName� �f.name�) {
            this.�f.name� = �f.name�;
        }
    '''
}
* */

}