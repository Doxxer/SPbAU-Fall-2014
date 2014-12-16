package ru.spbau.turaev.depgraph.validation

import ru.spbau.turaev.depgraph.myDsl.Model
import java.util.HashSet
import ru.spbau.turaev.depgraph.myDsl.MyDslPackage

import org.eclipse.xtext.validation.Check

/**
 * Custom validation rules. 
 *
 * see http://www.eclipse.org/Xtext/documentation.html#validation
 */
class MyDslValidator extends AbstractMyDslValidator {

	@Check
	def checkPersonsUnique(Model model) {
		var names = model.persons.map[name];
		var unique = new HashSet<String>(names).size();
		
		if (names.size() != unique) {
			warning('Persons\' names should be unique',
				MyDslPackage.Literals.MODEL__PERSONS,
				'shouldBeUnique'
			);
		}				
	}
}
