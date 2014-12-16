package ru.spbau.turaev.depgraph.validation;

import java.util.HashSet;
import java.util.List;
import org.eclipse.emf.common.util.EList;
import org.eclipse.xtext.validation.Check;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.ListExtensions;
import ru.spbau.turaev.depgraph.myDsl.Model;
import ru.spbau.turaev.depgraph.myDsl.MyDslPackage;
import ru.spbau.turaev.depgraph.myDsl.Person;
import ru.spbau.turaev.depgraph.validation.AbstractMyDslValidator;

/**
 * Custom validation rules.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#validation
 */
@SuppressWarnings("all")
public class MyDslValidator extends AbstractMyDslValidator {
  @Check
  public void checkPersonsUnique(final Model model) {
    EList<Person> _persons = model.getPersons();
    final Function1<Person, String> _function = new Function1<Person, String>() {
      public String apply(final Person it) {
        return it.getName();
      }
    };
    List<String> names = ListExtensions.<Person, String>map(_persons, _function);
    HashSet<String> _hashSet = new HashSet<String>(names);
    int unique = _hashSet.size();
    int _size = names.size();
    boolean _notEquals = (_size != unique);
    if (_notEquals) {
      this.warning("Persons\' names should be unique", 
        MyDslPackage.Literals.MODEL__PERSONS, 
        "shouldBeUnique");
    }
  }
}
