// This code was auto-generated, is not intended to be edited, and is subject to
// significant change. Please see the README file for more information.

library engine.element;

import 'dart:collection';
import 'java_core.dart';
import 'java_engine.dart';
import 'source.dart';
import 'scanner.dart' show Keyword;
import 'ast.dart';
import 'package:analyzer-experimental/src/generated/utilities_dart.dart';

/**
 * The interface {@code Annotation} defines the behavior of objects representing a single annotation
 * associated with an element.
 */
abstract class Annotation {
  /**
   * Return the element representing the field, variable, or const constructor being used as an
   * annotation.
   * @return the field, variable, or constructor being used as an annotation
   */
  Element get element;
}
/**
 * The interface {@code ClassElement} defines the behavior of elements that represent a class.
 */
abstract class ClassElement implements Element {
  /**
   * Return an array containing all of the accessors (getters and setters) contained in this class.
   * @return the accessors contained in this class
   */
  List<PropertyAccessorElement> get accessors;
  /**
   * Return an array containing all of the constructors contained in this class.
   * @return the constructors contained in this class
   */
  List<ConstructorElement> get constructors;
  /**
   * Return an array containing all of the fields contained in this class.
   * @return the fields contained in this class
   */
  List<FieldElement> get fields;
  /**
   * Return an array containing all of the interfaces that are implemented by this class.
   * @return the interfaces that are implemented by this class
   */
  List<InterfaceType> get interfaces;
  /**
   * Return an array containing all of the methods contained in this class.
   * @return the methods contained in this class
   */
  List<MethodElement> get methods;
  /**
   * Return an array containing all of the mixins that are applied to the class being extended in
   * order to derive the superclass of this class.
   * @return the mixins that are applied to derive the superclass of this class
   */
  List<InterfaceType> get mixins;
  /**
   * Return the superclass of this class, or {@code null} if the class represents the class
   * 'Object'. All other classes will have a non-{@code null} superclass. If the superclass was not
   * explicitly declared then the implicit superclass 'Object' will be returned.
   * @return the superclass of this class
   */
  InterfaceType get supertype;
  /**
   * Return the type defined by the class.
   * @return the type defined by the class
   */
  InterfaceType get type;
  /**
   * Return an array containing all of the type variables defined for this class.
   * @return the type variables defined for this class
   */
  List<TypeVariableElement> get typeVariables;
  /**
   * Return {@code true} if this class is abstract. A class is abstract if it has an explicit{@code abstract} modifier. Note, that this definition of <i>abstract</i> is different from
   * <i>has unimplemented members</i>.
   * @return {@code true} if this class is abstract
   */
  bool isAbstract();
}
/**
 * The interface {@code CompilationUnitElement} defines the behavior of elements representing a
 * compilation unit.
 */
abstract class CompilationUnitElement implements Element {
  /**
   * Return an array containing all of the top-level accessors (getters and setters) contained in
   * this compilation unit.
   * @return the top-level accessors contained in this compilation unit
   */
  List<PropertyAccessorElement> get accessors;
  /**
   * Return the library in which this compilation unit is defined.
   * @return the library in which this compilation unit is defined
   */
  LibraryElement get enclosingElement;
  /**
   * Return an array containing all of the fields contained in this compilation unit.
   * @return the fields contained in this compilation unit
   */
  List<FieldElement> get fields;
  /**
   * Return an array containing all of the top-level functions contained in this compilation unit.
   * @return the top-level functions contained in this compilation unit
   */
  List<FunctionElement> get functions;
  /**
   * Return the source that corresponds to this compilation unit.
   * @return the source that corresponds to this compilation unit
   */
  Source get source;
  /**
   * Return an array containing all of the type aliases contained in this compilation unit.
   * @return the type aliases contained in this compilation unit
   */
  List<TypeAliasElement> get typeAliases;
  /**
   * Return an array containing all of the classes contained in this compilation unit.
   * @return the classes contained in this compilation unit
   */
  List<ClassElement> get types;
}
/**
 * The interface {@code ConstructorElement} defines the behavior of elements representing a
 * constructor or a factory method defined within a type.
 */
abstract class ConstructorElement implements ExecutableElement {
  /**
   * Return the type in which this constructor is defined.
   * @return the type in which this constructor is defined
   */
  ClassElement get enclosingElement;
  /**
   * Return {@code true} if this constructor is a const constructor.
   * @return {@code true} if this constructor is a const constructor
   */
  bool isConst();
  /**
   * Return {@code true} if this constructor represents a factory constructor.
   * @return {@code true} if this constructor represents a factory constructor
   */
  bool isFactory();
}
/**
 * The interface {@code Element} defines the behavior common to all of the elements in the element
 * model. Generally speaking, the element model is a semantic model of the program that represents
 * things that are declared with a name and hence can be referenced elsewhere in the code.
 * <p>
 * There are two exceptions to the general case. First, there are elements in the element model that
 * are created for the convenience of various kinds of analysis but that do not have any
 * corresponding declaration within the source code. Such elements are marked as being
 * <i>synthetic</i>. Examples of synthetic elements include
 * <ul>
 * <li>default constructors in classes that do not define any explicit constructors,
 * <li>getters and setters that are induced by explicit field declarations,
 * <li>fields that are induced by explicit declarations of getters and setters, and
 * <li>functions representing the initialization expression for a variable.
 * </ul>
 * <p>
 * Second, there are elements in the element model that do not have a name. These correspond to
 * unnamed functions and exist in order to more accurately represent the semantic structure of the
 * program.
 */
abstract class Element {
  /**
   * Return the element of the given class that most immediately encloses this element, or{@code null} if there is no enclosing element of the given class.
   * @param elementClass the class of the element to be returned
   * @return the element that encloses this element
   */
  Element getAncestor(Type elementClass);
  /**
   * Return the analysis context in which this element is defined.
   * @return the analysis context in which this element is defined
   */
  AnalysisContext get context;
  /**
   * Return the element that either physically or logically encloses this element. This will be{@code null} if this element is a library because libraries are the top-level elements in the
   * model.
   * @return the element that encloses this element
   */
  Element get enclosingElement;
  /**
   * Return the kind of element that this is.
   * @return the kind of this element
   */
  ElementKind get kind;
  /**
   * Return the library that contains this element. This will be {@code null} if this element is a
   * library or HTML file because libraries and HTML files are not contained in other libraries.
   * @return the library that contains this element
   */
  LibraryElement get library;
  /**
   * Return an object representing the location of this element in the element model. The object can
   * be used to locate this element at a later time.
   * @return the location of this element in the element model
   */
  ElementLocation get location;
  /**
   * Return an array containing all of the metadata associated with this element.
   * @return the metadata associated with this element
   */
  List<Annotation> get metadata;
  /**
   * Return the name of this element, or {@code null} if this element does not have a name.
   * @return the name of this element
   */
  String get name;
  /**
   * Return the offset of the name of this element in the file that contains the declaration of this
   * element, or {@code -1} if this element is synthetic, does not have a name, or otherwise does
   * not have an offset.
   * @return the offset of the name of this element
   */
  int get nameOffset;
  /**
   * Return {@code true} if this element is synthetic. A synthetic element is an element that is not
   * represented in the source code explicitly, but is implied by the source code, such as the
   * default constructor for a class that does not explicitly define any constructors.
   * @return {@code true} if this element is synthetic
   */
  bool isSynthetic();
}
/**
 * The enumeration {@code ElementKind} defines the various kinds of elements in the element model.
 */
class ElementKind {
  static final ElementKind CLASS = new ElementKind('CLASS', 0);
  static final ElementKind COMPILATION_UNIT = new ElementKind('COMPILATION_UNIT', 1);
  static final ElementKind CONSTRUCTOR = new ElementKind('CONSTRUCTOR', 2);
  static final ElementKind DYNAMIC = new ElementKind('DYNAMIC', 3);
  static final ElementKind ERROR = new ElementKind('ERROR', 4);
  static final ElementKind EXPORT = new ElementKind('EXPORT', 5);
  static final ElementKind FIELD = new ElementKind('FIELD', 6);
  static final ElementKind FUNCTION = new ElementKind('FUNCTION', 7);
  static final ElementKind GETTER = new ElementKind('GETTER', 8);
  static final ElementKind HTML = new ElementKind('HTML', 9);
  static final ElementKind IMPORT = new ElementKind('IMPORT', 10);
  static final ElementKind LABEL = new ElementKind('LABEL', 11);
  static final ElementKind LIBRARY = new ElementKind('LIBRARY', 12);
  static final ElementKind METHOD = new ElementKind('METHOD', 13);
  static final ElementKind NAME = new ElementKind('NAME', 14);
  static final ElementKind PARAMETER = new ElementKind('PARAMETER', 15);
  static final ElementKind PREFIX = new ElementKind('PREFIX', 16);
  static final ElementKind SETTER = new ElementKind('SETTER', 17);
  static final ElementKind TYPE_ALIAS = new ElementKind('TYPE_ALIAS', 18);
  static final ElementKind TYPE_VARIABLE = new ElementKind('TYPE_VARIABLE', 19);
  static final ElementKind UNIVERSE = new ElementKind('UNIVERSE', 20);
  static final ElementKind VARIABLE = new ElementKind('VARIABLE', 21);
  static final List<ElementKind> values = [CLASS, COMPILATION_UNIT, CONSTRUCTOR, DYNAMIC, ERROR, EXPORT, FIELD, FUNCTION, GETTER, HTML, IMPORT, LABEL, LIBRARY, METHOD, NAME, PARAMETER, PREFIX, SETTER, TYPE_ALIAS, TYPE_VARIABLE, UNIVERSE, VARIABLE];
  final String __name;
  final int __ordinal;
  ElementKind(this.__name, this.__ordinal) {
  }
  String toString() => __name;
}
/**
 * The interface {@code ElementLocation} defines the behavior of objects that represent the location
 * of an element within the element model.
 */
abstract class ElementLocation {
  /**
   * Return an encoded representation of this location that can be used to create a location that is
   * equal to this location.
   * @return an encoded representation of this location
   */
  String get encoding;
}
/**
 * The interface {@code ExecutableElement} defines the behavior of elements representing an
 * executable object, including functions, methods, constructors, getters, and setters.
 */
abstract class ExecutableElement implements Element {
  /**
   * Return an array containing all of the functions defined within this executable element.
   * @return the functions defined within this executable element
   */
  List<ExecutableElement> get functions;
  /**
   * Return an array containing all of the labels defined within this executable element.
   * @return the labels defined within this executable element
   */
  List<LabelElement> get labels;
  /**
   * Return an array containing all of the local variables defined within this executable element.
   * @return the local variables defined within this executable element
   */
  List<VariableElement> get localVariables;
  /**
   * Return an array containing all of the parameters defined by this executable element.
   * @return the parameters defined by this executable element
   */
  List<ParameterElement> get parameters;
  /**
   * Return the type of function defined by this executable element.
   * @return the type of function defined by this executable element
   */
  FunctionType get type;
}
/**
 * The interface {@code ExportElement} defines the behavior of objects representing information
 * about a single export directive within a library.
 */
abstract class ExportElement implements Element {
  /**
   * An empty array of export elements.
   */
  static List<ExportElement> EMPTY_ARRAY = new List<ExportElement>.fixedLength(0);
  /**
   * Return an array containing the combinators that were specified as part of the export directive
   * in the order in which they were specified.
   * @return the combinators specified in the export directive
   */
  List<NamespaceCombinator> get combinators;
  /**
   * Return the library that is exported from this library by this export directive.
   * @return the library that is exported from this library
   */
  LibraryElement get exportedLibrary;
}
/**
 * The interface {@code FieldElement} defines the behavior of elements representing a field defined
 * within a type. Note that explicitly defined fields implicitly define a synthetic getter and that
 * non-{@code final} explicitly defined fields implicitly define a synthetic setter. Symmetrically,
 * synthetic fields are implicitly created for explicitly defined getters and setters. The following
 * rules apply:
 * <ul>
 * <li>Every explicit field is represented by a non-synthetic {@link FieldElement}.
 * <li>Every explicit field induces a getter and possibly a setter, both of which are represented by
 * synthetic {@link PropertyAccessorElement}s.
 * <li>Every explicit getter or setter is represented by a non-synthetic{@link PropertyAccessorElement}.
 * <li>Every explicit getter or setter (or pair thereof if they have the same name) induces a field
 * that is represented by a synthetic {@link FieldElement}.
 * </ul>
 */
abstract class FieldElement implements VariableElement {
  /**
   * Return the getter associated with this field. If this field was explicitly defined (is not
   * synthetic) then the getter associated with it will be synthetic.
   * @return the getter associated with this field
   */
  PropertyAccessorElement get getter;
  /**
   * Return the setter associated with this field, or {@code null} if the field is effectively{@code final} and therefore does not have a setter associated with it. (This can happen either
   * because the field is explicitly defined as being {@code final} or because the field is induced
   * by an explicit getter that does not have a corresponding setter.) If this field was explicitly
   * defined (is not synthetic) then the setter associated with it will be synthetic.
   * @return the setter associated with this field
   */
  PropertyAccessorElement get setter;
  /**
   * Return {@code true} if this field is a static field.
   * @return {@code true} if this field is a static field
   */
  bool isStatic();
}
/**
 * The interface {@code FunctionElement} defines the behavior of elements representing a function.
 */
abstract class FunctionElement implements ExecutableElement {
}
/**
 * The interface {@code HideCombinator} defines the behavior of combinators that cause some of the
 * names in a namespace to be hidden when being imported.
 */
abstract class HideCombinator implements NamespaceCombinator {
  /**
   * Return an array containing the names that are not to be made visible in the importing library
   * even if they are defined in the imported library.
   * @return the names from the imported library that are hidden from the importing library
   */
  List<String> get hiddenNames;
}
/**
 * The interface {@code HtmlElement} defines the behavior of elements representing an HTML file.
 */
abstract class HtmlElement implements Element {
  /**
   * Return an array containing all of the libraries contained in or referenced from script tags in
   * the HTML file. This includes libraries that are defined by the content of a script file as well
   * as libraries that are referenced in the {@core src} attribute of a script tag.
   * @return the libraries referenced from script tags in the HTML file
   */
  List<LibraryElement> get libraries;
  /**
   * Return the source that corresponds to this HTML file.
   * @return the source that corresponds to this HTML file
   */
  Source get source;
}
/**
 * The interface {@code ImportElement} defines the behavior of objects representing information
 * about a single import directive within a library.
 */
abstract class ImportElement implements Element {
  /**
   * An empty array of import elements.
   */
  static List<ImportElement> EMPTY_ARRAY = new List<ImportElement>.fixedLength(0);
  /**
   * Return an array containing the combinators that were specified as part of the import directive
   * in the order in which they were specified.
   * @return the combinators specified in the import directive
   */
  List<NamespaceCombinator> get combinators;
  /**
   * Return the library that is imported into this library by this import directive.
   * @return the library that is imported into this library
   */
  LibraryElement get importedLibrary;
  /**
   * Return the prefix that was specified as part of the import directive, or {@code null} if there
   * was no prefix specified.
   * @return the prefix that was specified as part of the import directive
   */
  PrefixElement get prefix;
}
/**
 * The interface {@code LabelElement} defines the behavior of elements representing a label
 * associated with a statement.
 */
abstract class LabelElement implements Element {
  /**
   * Return the executable element in which this label is defined.
   * @return the executable element in which this label is defined
   */
  ExecutableElement get enclosingElement;
}
/**
 * The interface {@code LibraryElement} defines the behavior of elements representing a library.
 */
abstract class LibraryElement implements Element {
  /**
   * Return the compilation unit that defines this library.
   * @return the compilation unit that defines this library
   */
  CompilationUnitElement get definingCompilationUnit;
  /**
   * Return the entry point for this library, or {@code null} if this library does not have an entry
   * point. The entry point is defined to be a zero argument top-level function whose name is{@code main}.
   * @return the entry point for this library
   */
  FunctionElement get entryPoint;
  /**
   * Return an array containing all of the exports defined in this library.
   * @return the exports defined in this library
   */
  List<ExportElement> get exports;
  /**
   * Return an array containing all of the libraries that are imported into this library. This
   * includes all of the libraries that are imported using a prefix (also available through the
   * prefixes returned by {@link #getPrefixes()}) and those that are imported without a prefix.
   * @return an array containing all of the libraries that are imported into this library
   */
  List<LibraryElement> get importedLibraries;
  /**
   * Return an array containing all of the imports defined in this library.
   * @return the imports defined in this library
   */
  List<ImportElement> get imports;
  /**
   * Return an array containing all of the compilation units that are included in this library using
   * a {@code part} directive. This does not include the defining compilation unit that contains the{@code part} directives.
   * @return the compilation units that are included in this library
   */
  List<CompilationUnitElement> get parts;
  /**
   * Return an array containing elements for each of the prefixes used to {@code import} libraries
   * into this library. Each prefix can be used in more than one {@code import} directive.
   * @return the prefixes used to {@code import} libraries into this library
   */
  List<PrefixElement> get prefixes;
}
/**
 * The interface {@code MethodElement} defines the behavior of elements that represent a method
 * defined within a type.
 */
abstract class MethodElement implements ExecutableElement {
  /**
   * Return the type in which this method is defined.
   * @return the type in which this method is defined
   */
  ClassElement get enclosingElement;
  /**
   * Return {@code true} if this method is abstract. Methods are abstract if they are not external
   * and have no body.
   * @return {@code true} if this method is abstract
   */
  bool isAbstract();
  /**
   * Return {@code true} if this method is static. Methods are static if they have been marked as
   * being static using the {@code static} modifier.
   * @return {@code true} if this method is static
   */
  bool isStatic();
}
/**
 * The interface {@code MultiplyDefinedElement} defines the behavior of pseudo-elements that
 * represent multiple elements defined within a single scope that have the same name. This situation
 * is not allowed by the language, so objects implementing this interface always represent an error.
 * As a result, most of the normal operations on elements do not make sense and will return useless
 * results.
 */
abstract class MultiplyDefinedElement implements Element {
  /**
   * Return an array containing all of the elements that were defined within the scope to have the
   * same name.
   * @return the elements that were defined with the same name
   */
  List<Element> get conflictingElements;
}
/**
 * The interface {@code NamespaceCombinator} defines the behavior common to objects that control how
 * namespaces are combined.
 */
abstract class NamespaceCombinator {
  /**
   * An empty array of namespace combinators.
   */
  static List<NamespaceCombinator> EMPTY_ARRAY = new List<NamespaceCombinator>.fixedLength(0);
}
/**
 * The interface {@code ParameterElement} defines the behavior of elements representing a parameter
 * defined within an executable element.
 */
abstract class ParameterElement implements VariableElement {
  /**
   * Return the kind of this parameter.
   * @return the kind of this parameter
   */
  ParameterKind get parameterKind;
}
/**
 * The interface {@code PrefixElement} defines the behavior common to elements that represent a
 * prefix used to import one or more libraries into another library.
 */
abstract class PrefixElement implements Element {
  /**
   * Return the library into which other libraries are imported using this prefix.
   * @return the library into which other libraries are imported using this prefix
   */
  LibraryElement get enclosingElement;
  /**
   * Return an array containing all of the libraries that are imported using this prefix.
   * @return the libraries that are imported using this prefix
   */
  List<LibraryElement> get importedLibraries;
}
/**
 * The interface {@code PropertyAccessorElement} defines the behavior of elements representing a
 * getter or a setter. Note that explicitly defined property accessors implicitly define a synthetic
 * field. Symmetrically, synthetic accessors are implicitly created for explicitly defined fields.
 * The following rules apply:
 * <ul>
 * <li>Every explicit field is represented by a non-synthetic {@link FieldElement}.
 * <li>Every explicit field induces a getter and possibly a setter, both of which are represented by
 * synthetic {@link PropertyAccessorElement}s.
 * <li>Every explicit getter or setter is represented by a non-synthetic{@link PropertyAccessorElement}.
 * <li>Every explicit getter or setter (or pair thereof if they have the same name) induces a field
 * that is represented by a synthetic {@link FieldElement}.
 * </ul>
 */
abstract class PropertyAccessorElement implements ExecutableElement {
  /**
   * Return the field associated with this accessor. If this accessor was explicitly defined (is not
   * synthetic) then the field associated with it will be synthetic.
   * @return the field associated with this accessor
   */
  FieldElement get field;
  /**
   * Return {@code true} if this accessor represents a getter.
   * @return {@code true} if this accessor represents a getter
   */
  bool isGetter();
  /**
   * Return {@code true} if this accessor represents a setter.
   * @return {@code true} if this accessor represents a setter
   */
  bool isSetter();
}
/**
 * The interface {@code ShowCombinator} defines the behavior of combinators that cause some of the
 * names in a namespace to be visible (and the rest hidden) when being imported.
 */
abstract class ShowCombinator implements NamespaceCombinator {
  /**
   * Return an array containing the names that are to be made visible in the importing library if
   * they are defined in the imported library.
   * @return the names from the imported library that are visible in the importing library
   */
  List<String> get shownNames;
}
/**
 * The interface {@code TypeAliasElement} defines the behavior of elements representing a type alias
 * ({@code typedef}).
 */
abstract class TypeAliasElement implements Element {
  /**
   * Return the compilation unit in which this type alias is defined.
   * @return the compilation unit in which this type alias is defined
   */
  CompilationUnitElement get enclosingElement;
  /**
   * Return an array containing all of the parameters defined by this type alias.
   * @return the parameters defined by this type alias
   */
  List<ParameterElement> get parameters;
  /**
   * Return the type of function defined by this type alias.
   * @return the type of function defined by this type alias
   */
  FunctionType get type;
  /**
   * Return an array containing all of the type variables defined for this type.
   * @return the type variables defined for this type
   */
  List<TypeVariableElement> get typeVariables;
}
/**
 * The interface {@code TypeVariableElement} defines the behavior of elements representing a type
 * variable.
 */
abstract class TypeVariableElement implements Element {
  /**
   * Return the type representing the bound associated with this variable, or {@code null} if this
   * variable does not have an explicit bound.
   * @return the type representing the bound associated with this variable
   */
  Type2 get bound;
  /**
   * Return the type defined by this type variable.
   * @return the type defined by this type variable
   */
  TypeVariableType get type;
}
/**
 * The interface {@code UndefinedElement} defines the behavior of pseudo-elements that represent
 * names that are undefined. This situation is not allowed by the language, so objects implementing
 * this interface always represent an error. As a result, most of the normal operations on elements
 * do not make sense and will return useless results.
 */
abstract class UndefinedElement implements Element {
}
/**
 * The interface {@code VariableElement} defines the behavior common to elements that represent a
 * variable.
 */
abstract class VariableElement implements Element {
  /**
   * Return a synthetic function representing this variable's initializer, or {@code null} if this
   * variable does not have an initializer. The function will have no parameters. The return type of
   * the function will be the compile-time type of the initialization expression.
   * @return a synthetic function representing this variable's initializer
   */
  FunctionElement get initializer;
  /**
   * Return the declared type of this variable, or {@code null} if the variable did not have a
   * declared type (such as if it was declared using the keyword 'var').
   * @return the declared type of this variable
   */
  Type2 get type;
  /**
   * Return {@code true} if this variable is a const variable. Variables are const if they have been
   * marked as being const using the {@code const} modifier.
   * @return {@code true} if this variable is a const variable
   */
  bool isConst();
  /**
   * Return {@code true} if this variable is a final variable. Variables are final if they have been
   * marked as being final using either the {@code final} or {@code const} modifiers.
   * @return {@code true} if this variable is a final variable
   */
  bool isFinal();
}
/**
 * Instances of the class {@code AnnotationImpl} implement an {@link Annotation}.
 */
class AnnotationImpl implements Annotation {
  /**
   * The element representing the field, variable, or constructor being used as an annotation.
   */
  Element _element;
  /**
   * An empty array of annotations.
   */
  static List<AnnotationImpl> EMPTY_ARRAY = new List<AnnotationImpl>.fixedLength(0);
  /**
   * Initialize a newly created annotation.
   * @param element the element representing the field, variable, or constructor being used as an
   * annotation
   */
  AnnotationImpl(Element element) {
    this._element = element;
  }
  Element get element => _element;
}
/**
 * Instances of the class {@code ClassElementImpl} implement a {@code ClassElement}.
 */
class ClassElementImpl extends ElementImpl implements ClassElement {
  /**
   * An array containing all of the accessors (getters and setters) contained in this class.
   */
  List<PropertyAccessorElement> _accessors = PropertyAccessorElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the constructors contained in this class.
   */
  List<ConstructorElement> _constructors = ConstructorElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the fields contained in this class.
   */
  List<FieldElement> _fields = FieldElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the mixins that are applied to the class being extended in order to
   * derive the superclass of this class.
   */
  List<InterfaceType> _mixins = InterfaceTypeImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the interfaces that are implemented by this class.
   */
  List<InterfaceType> _interfaces = InterfaceTypeImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the methods contained in this class.
   */
  List<MethodElement> _methods = MethodElementImpl.EMPTY_ARRAY;
  /**
   * The superclass of the class, or {@code null} if the class does not have an explicit superclass.
   */
  InterfaceType _supertype;
  /**
   * The type defined by the class.
   */
  InterfaceType _type;
  /**
   * An array containing all of the type variables defined for this class.
   */
  List<TypeVariableElement> _typeVariables = TypeVariableElementImpl.EMPTY_ARRAY;
  /**
   * An empty array of type elements.
   */
  static List<ClassElement> EMPTY_ARRAY = new List<ClassElement>.fixedLength(0);
  /**
   * Initialize a newly created class element to have the given name.
   * @param name the name of this element
   */
  ClassElementImpl(Identifier name) : super.con1(name) {
  }
  List<PropertyAccessorElement> get accessors => _accessors;
  ElementImpl getChild(String identifier) {
    for (PropertyAccessorElement accessor in _accessors) {
      if ((accessor as PropertyAccessorElementImpl).identifier == identifier) {
        return accessor as PropertyAccessorElementImpl;
      }
    }
    for (ConstructorElement constructor in _constructors) {
      if ((constructor as ConstructorElementImpl).identifier == identifier) {
        return constructor as ConstructorElementImpl;
      }
    }
    for (FieldElement field in _fields) {
      if ((field as FieldElementImpl).identifier == identifier) {
        return field as FieldElementImpl;
      }
    }
    for (MethodElement method in _methods) {
      if ((method as MethodElementImpl).identifier == identifier) {
        return method as MethodElementImpl;
      }
    }
    for (TypeVariableElement typeVariable in _typeVariables) {
      if ((typeVariable as TypeVariableElementImpl).identifier == identifier) {
        return typeVariable as TypeVariableElementImpl;
      }
    }
    return null;
  }
  List<ConstructorElement> get constructors => _constructors;
  List<FieldElement> get fields => _fields;
  List<InterfaceType> get interfaces => _interfaces;
  ElementKind get kind => ElementKind.CLASS;
  List<MethodElement> get methods => _methods;
  List<InterfaceType> get mixins => _mixins;
  InterfaceType get supertype => _supertype;
  InterfaceType get type => _type;
  List<TypeVariableElement> get typeVariables => _typeVariables;
  bool isAbstract() => hasModifier(Modifier.ABSTRACT);
  /**
   * Set whether this class is abstract to correspond to the given value.
   * @param isAbstract {@code true} if the class is abstract
   */
  void set abstract(bool isAbstract) {
    setModifier(Modifier.ABSTRACT, isAbstract);
  }
  /**
   * Set the accessors contained in this class to the given accessors.
   * @param accessors the accessors contained in this class
   */
  void set accessors2(List<PropertyAccessorElement> accessors) {
    for (PropertyAccessorElement accessor in accessors) {
      (accessor as PropertyAccessorElementImpl).enclosingElement2 = this;
    }
    this._accessors = accessors;
  }
  /**
   * Set the constructors contained in this class to the given constructors.
   * @param constructors the constructors contained in this class
   */
  void set constructors2(List<ConstructorElement> constructors) {
    for (ConstructorElement constructor in constructors) {
      (constructor as ConstructorElementImpl).enclosingElement2 = this;
    }
    this._constructors = constructors;
  }
  /**
   * Set the fields contained in this class to the given fields.
   * @param fields the fields contained in this class
   */
  void set fields3(List<FieldElement> fields) {
    for (FieldElement field in fields) {
      (field as FieldElementImpl).enclosingElement2 = this;
    }
    this._fields = fields;
  }
  /**
   * Set the interfaces that are implemented by this class to the given types.
   * @param the interfaces that are implemented by this class
   */
  void set interfaces2(List<InterfaceType> interfaces) {
    this._interfaces = interfaces;
  }
  /**
   * Set the methods contained in this class to the given methods.
   * @param methods the methods contained in this class
   */
  void set methods2(List<MethodElement> methods) {
    for (MethodElement method in methods) {
      (method as MethodElementImpl).enclosingElement2 = this;
    }
    this._methods = methods;
  }
  /**
   * Set the mixins that are applied to the class being extended in order to derive the superclass
   * of this class to the given types.
   * @param mixins the mixins that are applied to derive the superclass of this class
   */
  void set mixins2(List<InterfaceType> mixins) {
    this._mixins = mixins;
  }
  /**
   * Set the superclass of the class to the given type.
   * @param supertype the superclass of the class
   */
  void set supertype2(InterfaceType supertype) {
    this._supertype = supertype;
  }
  /**
   * Set the type defined by the class to the given type.
   * @param type the type defined by the class
   */
  void set type9(InterfaceType type) {
    this._type = type;
  }
  /**
   * Set the type variables defined for this class to the given type variables.
   * @param typeVariables the type variables defined for this class
   */
  void set typeVariables2(List<TypeVariableElement> typeVariables) {
    for (TypeVariableElement typeVariable in typeVariables) {
      (typeVariable as TypeVariableElementImpl).enclosingElement2 = this;
    }
    this._typeVariables = typeVariables;
  }
  String toString() {
    String name15 = name;
    return name15 == null ? "<unnamed class>" : "class ${name15}";
  }
}
/**
 * Instances of the class {@code CompilationUnitElementImpl} implement a{@link CompilationUnitElement}.
 */
class CompilationUnitElementImpl extends ElementImpl implements CompilationUnitElement {
  /**
   * An array containing all of the top-level accessors (getters and setters) contained in this
   * compilation unit.
   */
  List<PropertyAccessorElement> _accessors = PropertyAccessorElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the fields contained in this compilation unit.
   */
  List<FieldElement> _fields = FieldElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the top-level functions contained in this compilation unit.
   */
  List<FunctionElement> _functions = FunctionElementImpl.EMPTY_ARRAY;
  /**
   * The source that corresponds to this compilation unit.
   */
  Source _source;
  /**
   * An array containing all of the type aliases contained in this compilation unit.
   */
  List<TypeAliasElement> _typeAliases = TypeAliasElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the types contained in this compilation unit.
   */
  List<ClassElement> _types = ClassElementImpl.EMPTY_ARRAY;
  /**
   * An empty array of compilation unit elements.
   */
  static List<CompilationUnitElement> EMPTY_ARRAY = new List<CompilationUnitElement>.fixedLength(0);
  /**
   * Initialize a newly created compilation unit element to have the given name.
   * @param name the name of this element
   */
  CompilationUnitElementImpl(String name) : super.con2(name, -1) {
  }
  bool operator ==(Object object) => this.runtimeType == object.runtimeType && _source == (object as CompilationUnitElementImpl).source;
  List<PropertyAccessorElement> get accessors => _accessors;
  ElementImpl getChild(String identifier) {
    for (PropertyAccessorElement accessor in _accessors) {
      if ((accessor as PropertyAccessorElementImpl).identifier == identifier) {
        return accessor as PropertyAccessorElementImpl;
      }
    }
    for (FieldElement field in _fields) {
      if ((field as FieldElementImpl).identifier == identifier) {
        return field as FieldElementImpl;
      }
    }
    for (ExecutableElement function in _functions) {
      if ((function as ExecutableElementImpl).identifier == identifier) {
        return function as ExecutableElementImpl;
      }
    }
    for (TypeAliasElement typeAlias in _typeAliases) {
      if ((typeAlias as TypeAliasElementImpl).identifier == identifier) {
        return typeAlias as TypeAliasElementImpl;
      }
    }
    for (ClassElement type in _types) {
      if ((type as ClassElementImpl).identifier == identifier) {
        return type as ClassElementImpl;
      }
    }
    return null;
  }
  LibraryElement get enclosingElement => super.enclosingElement as LibraryElement;
  List<FieldElement> get fields => _fields;
  List<FunctionElement> get functions => _functions;
  String get identifier => source.fullName;
  ElementKind get kind => ElementKind.COMPILATION_UNIT;
  Source get source => _source;
  List<TypeAliasElement> get typeAliases => _typeAliases;
  List<ClassElement> get types => _types;
  int get hashCode => _source.hashCode;
  /**
   * Set the top-level accessors (getters and setters) contained in this compilation unit to the
   * given accessors.
   * @param the top-level accessors (getters and setters) contained in this compilation unit
   */
  void set accessors3(List<PropertyAccessorElement> accessors) {
    for (PropertyAccessorElement accessor in accessors) {
      (accessor as PropertyAccessorElementImpl).enclosingElement2 = this;
    }
    this._accessors = accessors;
  }
  /**
   * Set the fields contained in this compilation unit to the given fields.
   * @param fields the fields contained in this compilation unit
   */
  void set fields4(List<FieldElement> fields) {
    for (FieldElement field in fields) {
      (field as FieldElementImpl).enclosingElement2 = this;
    }
    this._fields = fields;
  }
  /**
   * Set the top-level functions contained in this compilation unit to the given functions.
   * @param functions the top-level functions contained in this compilation unit
   */
  void set functions2(List<FunctionElement> functions) {
    for (FunctionElement function in functions) {
      (function as FunctionElementImpl).enclosingElement2 = this;
    }
    this._functions = functions;
  }
  /**
   * Set the source that corresponds to this compilation unit to the given source.
   * @param source the source that corresponds to this compilation unit
   */
  void set source3(Source source) {
    this._source = source;
  }
  /**
   * Set the type aliases contained in this compilation unit to the given type aliases.
   * @param typeAliases the type aliases contained in this compilation unit
   */
  void set typeAliases2(List<TypeAliasElement> typeAliases) {
    for (TypeAliasElement typeAlias in typeAliases) {
      (typeAlias as TypeAliasElementImpl).enclosingElement2 = this;
    }
    this._typeAliases = typeAliases;
  }
  /**
   * Set the types contained in this compilation unit to the given types.
   * @param types types contained in this compilation unit
   */
  void set types2(List<ClassElement> types) {
    for (ClassElement type in types) {
      (type as ClassElementImpl).enclosingElement2 = this;
    }
    this._types = types;
  }
}
/**
 * Instances of the class {@code ConstructorElementImpl} implement a {@code ConstructorElement}.
 */
class ConstructorElementImpl extends ExecutableElementImpl implements ConstructorElement {
  /**
   * An empty array of constructor elements.
   */
  static List<ConstructorElement> EMPTY_ARRAY = new List<ConstructorElement>.fixedLength(0);
  /**
   * Initialize a newly created constructor element to have the given name.
   * @param name the name of this element
   */
  ConstructorElementImpl(Identifier name) : super.con1(name) {
  }
  ClassElement get enclosingElement => super.enclosingElement as ClassElement;
  ElementKind get kind => ElementKind.CONSTRUCTOR;
  bool isConst() => hasModifier(Modifier.CONST);
  bool isFactory() => hasModifier(Modifier.FACTORY);
  /**
   * Set whether this constructor represents a factory method to the given value.
   * @param isFactory {@code true} if this constructor represents a factory method
   */
  void set factory(bool isFactory) {
    setModifier(Modifier.FACTORY, isFactory);
  }
}
/**
 * Instances of the class {@code DynamicElementImpl} represent the synthetic element representing
 * the declaration of the type {@code dynamic}.
 */
class DynamicElementImpl extends ElementImpl {
  /**
   * The type defined by this element.
   */
  DynamicTypeImpl _type;
  /**
   * Initialize a newly created instance of this class. Instances of this class should <b>not</b> be
   * created except as part of creating the type associated with this element. The single instance
   * of this class should be accessed through the single instance of the class{@link DynamicTypeImpl}.
   */
  DynamicElementImpl() : super.con2(Keyword.DYNAMIC.syntax, -1) {
    setModifier(Modifier.SYNTHETIC, true);
  }
  ElementKind get kind => ElementKind.DYNAMIC;
  /**
   * Return the type defined by this element.
   * @return the type defined by this element
   */
  DynamicTypeImpl get type => _type;
  /**
   * Set the type defined by this element to the given type.
   * @param type the type defined by this element
   */
  void set type10(DynamicTypeImpl type) {
    this._type = type;
  }
}
/**
 * The abstract class {@code ElementImpl} implements the behavior common to objects that implement
 * an {@link Element}.
 */
abstract class ElementImpl implements Element {
  /**
   * The enclosing element of this element, or {@code null} if this element is at the root of the
   * element structure.
   */
  ElementImpl _enclosingElement;
  /**
   * The name of this element.
   */
  String _name;
  /**
   * The offset of the name of this element in the file that contains the declaration of this
   * element.
   */
  int _nameOffset = 0;
  /**
   * A bit-encoded form of the modifiers associated with this element.
   */
  Set<Modifier> _modifiers;
  /**
   * An array containing all of the metadata associated with this element.
   */
  List<Annotation> _metadata = AnnotationImpl.EMPTY_ARRAY;
  /**
   * Initialize a newly created element to have the given name.
   * @param name the name of this element
   */
  ElementImpl.con1(Identifier name) {
    _jtd_constructor_129_impl(name);
  }
  _jtd_constructor_129_impl(Identifier name) {
    _jtd_constructor_130_impl(name == null ? "" : name.name, name == null ? -1 : name.offset);
  }
  /**
   * Initialize a newly created element to have the given name.
   * @param name the name of this element
   * @param nameOffset the offset of the name of this element in the file that contains the
   * declaration of this element
   */
  ElementImpl.con2(String name, int nameOffset) {
    _jtd_constructor_130_impl(name, nameOffset);
  }
  _jtd_constructor_130_impl(String name, int nameOffset) {
    this._name = name;
    this._nameOffset = nameOffset;
    this._modifiers = new Set();
  }
  bool operator ==(Object object) => object is Element && (object as Element).location == location;
  Element getAncestor(Type elementClass) {
    Element ancestor = _enclosingElement;
    while (ancestor != null && !isInstanceOf(ancestor, elementClass)) {
      ancestor = ancestor.enclosingElement;
    }
    return ancestor as Element;
  }
  /**
   * Return the child of this element that is uniquely identified by the given identifier, or{@code null} if there is no such child.
   * @param identifier the identifier used to select a child
   * @return the child of this element with the given identifier
   */
  ElementImpl getChild(String identifier) => null;
  AnalysisContext get context {
    if (_enclosingElement == null) {
      return null;
    }
    return _enclosingElement.context;
  }
  Element get enclosingElement => _enclosingElement;
  LibraryElement get library => getAncestor(LibraryElement);
  ElementLocation get location => new ElementLocationImpl.con1(this);
  List<Annotation> get metadata => _metadata;
  String get name => _name;
  int get nameOffset => _nameOffset;
  int get hashCode => location.hashCode;
  bool isSynthetic() => hasModifier(Modifier.SYNTHETIC);
  /**
   * Set the metadata associate with this element to the given array of annotations.
   * @param metadata the metadata to be associated with this element
   */
  void set metadata2(List<Annotation> metadata) {
    this._metadata = metadata;
  }
  /**
   * Set whether this element is synthetic to correspond to the given value.
   * @param isSynthetic {@code true} if the element is synthetic
   */
  void set synthetic(bool isSynthetic) {
    setModifier(Modifier.SYNTHETIC, isSynthetic);
  }
  /**
   * Return an identifier that uniquely identifies this element among the children of this element's
   * parent.
   * @return an identifier that uniquely identifies this element relative to its parent
   */
  String get identifier => name;
  /**
   * Return {@code true} if this element has the given modifier associated with it.
   * @param modifier the modifier being tested for
   * @return {@code true} if this element has the given modifier associated with it
   */
  bool hasModifier(Modifier modifier) => _modifiers.contains(modifier);
  /**
   * Set the enclosing element of this element to the given element.
   * @param element the enclosing element of this element
   */
  void set enclosingElement2(ElementImpl element) {
    _enclosingElement = element;
  }
  /**
   * Set whether the given modifier is associated with this element to correspond to the given
   * value.
   * @param modifier the modifier to be set
   * @param value {@code true} if the modifier is to be associated with this element
   */
  void setModifier(Modifier modifier, bool value) {
    if (value) {
      _modifiers.add(modifier);
    } else {
      _modifiers.remove(modifier);
    }
  }
}
/**
 * Instances of the class {@code ElementLocationImpl} implement an {@link ElementLocation}.
 */
class ElementLocationImpl implements ElementLocation {
  /**
   * The path to the element whose location is represented by this object.
   */
  List<String> _components;
  /**
   * The character used to separate components in the encoded form.
   */
  static int _SEPARATOR_CHAR = 0x3b;
  /**
   * Initialize a newly created location to represent the given element.
   * @param element the element whose location is being represented
   */
  ElementLocationImpl.con1(Element element) {
    _jtd_constructor_131_impl(element);
  }
  _jtd_constructor_131_impl(Element element) {
    List<String> components = new List<String>();
    Element ancestor = element;
    while (ancestor != null) {
      components.insertRange(0, 1, (ancestor as ElementImpl).identifier);
      ancestor = ancestor.enclosingElement;
    }
    this._components = new List.from(components);
  }
  /**
   * Initialize a newly created location from the given encoded form.
   * @param encoding the encoded form of a location
   */
  ElementLocationImpl.con2(String encoding) {
    _jtd_constructor_132_impl(encoding);
  }
  _jtd_constructor_132_impl(String encoding) {
    this._components = decode(encoding);
  }
  bool operator ==(Object object) {
    if (object is! ElementLocationImpl) {
      return false;
    }
    ElementLocationImpl location = object as ElementLocationImpl;
    return JavaArrays.equals(_components, location._components);
  }
  /**
   * Return the path to the element whose location is represented by this object.
   * @return the path to the element whose location is represented by this object
   */
  List<String> get components => _components;
  String get encoding {
    StringBuffer builder = new StringBuffer();
    int length2 = _components.length;
    for (int i = 0; i < length2; i++) {
      if (i > 0) {
        builder.addCharCode(ElementLocationImpl._SEPARATOR_CHAR);
      }
      encode(builder, _components[i]);
    }
    return builder.toString();
  }
  int get hashCode => JavaArrays.makeHashCode(_components);
  /**
   * Decode the encoded form of a location into an array of components.
   * @param encoding the encoded form of a location
   * @return the components that were encoded
   */
  List<String> decode(String encoding) {
    List<String> components = new List<String>();
    StringBuffer builder = new StringBuffer();
    int index = 0;
    int length3 = encoding.length;
    while (index < length3) {
      int currentChar = encoding.charCodeAt(index);
      if (currentChar == ElementLocationImpl._SEPARATOR_CHAR) {
        if (index + 1 < length3 && encoding.charCodeAt(index + 1) == ElementLocationImpl._SEPARATOR_CHAR) {
          builder.addCharCode(ElementLocationImpl._SEPARATOR_CHAR);
          index += 2;
        } else {
          components.add(builder.toString());
          builder.clear();
          index++;
        }
      } else {
        builder.addCharCode(currentChar);
        index++;
      }
    }
    if (builder.length > 0) {
      components.add(builder.toString());
    }
    return new List.from(components);
  }
  /**
   * Append an encoded form of the given component to the given builder.
   * @param builder the builder to which the encoded component is to be appended
   * @param component the component to be appended to the builder
   */
  void encode(StringBuffer builder, String component) {
    int length4 = component.length;
    for (int i = 0; i < length4; i++) {
      int currentChar = component.charCodeAt(i);
      if (currentChar == ElementLocationImpl._SEPARATOR_CHAR) {
        builder.addCharCode(ElementLocationImpl._SEPARATOR_CHAR);
      }
      builder.addCharCode(currentChar);
    }
  }
}
/**
 * The abstract class {@code ExecutableElementImpl} implements the behavior common to{@code ExecutableElement}s.
 */
abstract class ExecutableElementImpl extends ElementImpl implements ExecutableElement {
  /**
   * An array containing all of the functions defined within this executable element.
   */
  List<ExecutableElement> _functions = EMPTY_ARRAY;
  /**
   * An array containing all of the labels defined within this executable element.
   */
  List<LabelElement> _labels = LabelElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the local variables defined within this executable element.
   */
  List<VariableElement> _localVariables = VariableElementImpl.EMPTY_ARRAY;
  /**
   * An array containing all of the parameters defined by this executable element.
   */
  List<ParameterElement> _parameters = ParameterElementImpl.EMPTY_ARRAY;
  /**
   * The type of function defined by this executable element.
   */
  FunctionType _type;
  /**
   * An empty array of executable elements.
   */
  static List<ExecutableElement> EMPTY_ARRAY = new List<ExecutableElement>.fixedLength(0);
  /**
   * Initialize a newly created executable element to have the given name.
   * @param name the name of this element
   */
  ExecutableElementImpl.con1(Identifier name) : super.con1(name) {
    _jtd_constructor_133_impl(name);
  }
  _jtd_constructor_133_impl(Identifier name) {
  }
  /**
   * Initialize a newly created executable element to have the given name.
   * @param name the name of this element
   * @param nameOffset the offset of the name of this element in the file that contains the
   * declaration of this element
   */
  ExecutableElementImpl.con2(String name, int nameOffset) : super.con2(name, nameOffset) {
    _jtd_constructor_134_impl(name, nameOffset);
  }
  _jtd_constructor_134_impl(String name, int nameOffset) {
  }
  ElementImpl getChild(String identifier) {
    for (ExecutableElement function in _functions) {
      if ((function as ExecutableElementImpl).identifier == identifier) {
        return function as ExecutableElementImpl;
      }
    }
    for (LabelElement label in _labels) {
      if ((label as LabelElementImpl).identifier == identifier) {
        return label as LabelElementImpl;
      }
    }
    for (VariableElement variable in _localVariables) {
      if ((variable as VariableElementImpl).identifier == identifier) {
        return variable as VariableElementImpl;
      }
    }
    for (ParameterElement parameter in _parameters) {
      if ((parameter as ParameterElementImpl).identifier == identifier) {
        return parameter as ParameterElementImpl;
      }
    }
    return null;
  }
  List<ExecutableElement> get functions => _functions;
  List<LabelElement> get labels => _labels;
  List<VariableElement> get localVariables => _localVariables;
  List<ParameterElement> get parameters => _parameters;
  FunctionType get type => _type;
  /**
   * Set the functions defined within this executable element to the given functions.
   * @param functions the functions defined within this executable element
   */
  void set functions3(List<ExecutableElement> functions) {
    for (ExecutableElement function in functions) {
      (function as ExecutableElementImpl).enclosingElement2 = this;
    }
    this._functions = functions;
  }
  /**
   * Set the labels defined within this executable element to the given labels.
   * @param labels the labels defined within this executable element
   */
  void set labels2(List<LabelElement> labels) {
    for (LabelElement label in labels) {
      (label as LabelElementImpl).enclosingElement2 = this;
    }
    this._labels = labels;
  }
  /**
   * Set the local variables defined within this executable element to the given variables.
   * @param localVariables the local variables defined within this executable element
   */
  void set localVariables2(List<VariableElement> localVariables) {
    for (VariableElement variable in localVariables) {
      (variable as VariableElementImpl).enclosingElement2 = this;
    }
    this._localVariables = localVariables;
  }
  /**
   * Set the parameters defined by this executable element to the given parameters.
   * @param parameters the parameters defined by this executable element
   */
  void set parameters7(List<ParameterElement> parameters) {
    for (ParameterElement parameter in parameters) {
      (parameter as ParameterElementImpl).enclosingElement2 = this;
    }
    this._parameters = parameters;
  }
  /**
   * Set the type of function defined by this executable element to the given type.
   * @param type the type of function defined by this executable element
   */
  void set type11(FunctionType type) {
    this._type = type;
  }
}
/**
 * Instances of the class {@code ExportElementImpl} implement an {@link ExportElement}.
 */
class ExportElementImpl extends ElementImpl implements ExportElement {
  /**
   * The library that is exported from this library by this export directive.
   */
  LibraryElement _exportedLibrary;
  /**
   * The combinators that were specified as part of the export directive in the order in which they
   * were specified.
   */
  List<NamespaceCombinator> _combinators = NamespaceCombinator.EMPTY_ARRAY;
  /**
   * Initialize a newly created export element.
   */
  ExportElementImpl() : super.con1(null) {
  }
  List<NamespaceCombinator> get combinators => _combinators;
  LibraryElement get exportedLibrary => _exportedLibrary;
  ElementKind get kind => ElementKind.EXPORT;
  /**
   * Set the combinators that were specified as part of the export directive to the given array of
   * combinators.
   * @param combinators the combinators that were specified as part of the export directive
   */
  void set combinators2(List<NamespaceCombinator> combinators) {
    this._combinators = combinators;
  }
  /**
   * Set the library that is exported from this library by this import directive to the given
   * library.
   * @param exportedLibrary the library that is exported from this library
   */
  void set exportedLibrary2(LibraryElement exportedLibrary) {
    this._exportedLibrary = exportedLibrary;
  }
}
/**
 * Instances of the class {@code FieldElementImpl} implement a {@code FieldElement}.
 */
class FieldElementImpl extends VariableElementImpl implements FieldElement {
  /**
   * The getter associated with this field.
   */
  PropertyAccessorElement _getter;
  /**
   * The setter associated with this field, or {@code null} if the field is effectively{@code final} and therefore does not have a setter associated with it.
   */
  PropertyAccessorElement _setter;
  /**
   * An empty array of field elements.
   */
  static List<FieldElement> EMPTY_ARRAY = new List<FieldElement>.fixedLength(0);
  /**
   * Initialize a newly created field element to have the given name.
   * @param name the name of this element
   */
  FieldElementImpl.con1(Identifier name) : super.con1(name) {
    _jtd_constructor_136_impl(name);
  }
  _jtd_constructor_136_impl(Identifier name) {
  }
  /**
   * Initialize a newly created synthetic field element to have the given name.
   * @param name the name of this element
   */
  FieldElementImpl.con2(String name) : super.con2(name, -1) {
    _jtd_constructor_137_impl(name);
  }
  _jtd_constructor_137_impl(String name) {
    synthetic = true;
  }
  PropertyAccessorElement get getter => _getter;
  ElementKind get kind => ElementKind.FIELD;
  PropertyAccessorElement get setter => _setter;
  bool isStatic() => hasModifier(Modifier.STATIC);
  /**
   * Set the getter associated with this field to the given accessor.
   * @param getter the getter associated with this field
   */
  void set getter2(PropertyAccessorElement getter) {
    this._getter = getter;
  }
  /**
   * Set the setter associated with this field to the given accessor.
   * @param setter the setter associated with this field
   */
  void set setter2(PropertyAccessorElement setter) {
    this._setter = setter;
  }
  /**
   * Set whether this field is static to correspond to the given value.
   * @param isStatic {@code true} if the field is static
   */
  void set static(bool isStatic) {
    setModifier(Modifier.STATIC, isStatic);
  }
  String toString() => "field ${type} ${name}";
}
/**
 * Instances of the class {@code FunctionElementImpl} implement a {@code FunctionElement}.
 */
class FunctionElementImpl extends ExecutableElementImpl implements FunctionElement {
  /**
   * An empty array of function elements.
   */
  static List<FunctionElement> EMPTY_ARRAY = new List<FunctionElement>.fixedLength(0);
  /**
   * Initialize a newly created synthetic function element.
   */
  FunctionElementImpl() : super.con2("", -1) {
    _jtd_constructor_138_impl();
  }
  _jtd_constructor_138_impl() {
    synthetic = true;
  }
  /**
   * Initialize a newly created function element to have the given name.
   * @param name the name of this element
   */
  FunctionElementImpl.con1(Identifier name) : super.con1(name) {
    _jtd_constructor_139_impl(name);
  }
  _jtd_constructor_139_impl(Identifier name) {
  }
  String get identifier => name;
  ElementKind get kind => ElementKind.FUNCTION;
}
/**
 * Instances of the class {@code ShowCombinatorImpl} implement a {@link ShowCombinator}.
 */
class HideCombinatorImpl implements HideCombinator {
  /**
   * The names that are not to be made visible in the importing library even if they are defined in
   * the imported library.
   */
  List<String> _hiddenNames = StringUtilities.EMPTY_ARRAY;
  /**
   * Initialize a newly created combinator.
   */
  HideCombinatorImpl() : super() {
  }
  List<String> get hiddenNames => _hiddenNames;
  /**
   * Set the names that are not to be made visible in the importing library even if they are defined
   * in the imported library to the given names.
   * @param hiddenNames the names that are not to be made visible in the importing library
   */
  void set hiddenNames2(List<String> hiddenNames) {
    this._hiddenNames = hiddenNames;
  }
}
/**
 * Instances of the class {@code HtmlElementImpl} implement an {@link HtmlElement}.
 */
class HtmlElementImpl extends ElementImpl implements HtmlElement {
  /**
   * An empty array of HTML file elements.
   */
  static List<HtmlElement> EMPTY_ARRAY = new List<HtmlElement>.fixedLength(0);
  /**
   * The analysis context in which this library is defined.
   */
  AnalysisContext _context;
  /**
   * The libraries contained in or referenced from script tags in the HTML file.
   */
  List<LibraryElement> _libraries = LibraryElementImpl.EMPTY_ARRAY;
  /**
   * The source that corresponds to this HTML file.
   */
  Source _source;
  /**
   * Initialize a newly created HTML element to have the given name.
   * @param context the analysis context in which the HTML file is defined
   * @param name the name of this element
   */
  HtmlElementImpl(AnalysisContext context, String name) : super.con2(name, -1) {
    this._context = context;
  }
  bool operator ==(Object object) => this.runtimeType == object.runtimeType && _source == (object as CompilationUnitElementImpl).source;
  AnalysisContext get context => _context;
  ElementKind get kind => ElementKind.HTML;
  List<LibraryElement> get libraries => _libraries;
  Source get source => _source;
  int get hashCode => _source.hashCode;
  /**
   * Set the libraries contained in or referenced from script tags in the HTML file to the given
   * libraries.
   * @param libraries the libraries contained in or referenced from script tags in the HTML file
   */
  void set libraries2(List<LibraryElement> libraries) {
    this._libraries = libraries;
  }
  /**
   * Set the source that corresponds to this HTML file to the given source.
   * @param source the source that corresponds to this HTML file
   */
  void set source4(Source source) {
    this._source = source;
  }
}
/**
 * Instances of the class {@code ImportElementImpl} implement an {@link ImportElement}.
 */
class ImportElementImpl extends ElementImpl implements ImportElement {
  /**
   * The library that is imported into this library by this import directive.
   */
  LibraryElement _importedLibrary;
  /**
   * The combinators that were specified as part of the import directive in the order in which they
   * were specified.
   */
  List<NamespaceCombinator> _combinators = NamespaceCombinator.EMPTY_ARRAY;
  /**
   * The prefix that was specified as part of the import directive, or {@code null} if there was no
   * prefix specified.
   */
  PrefixElement _prefix;
  /**
   * Initialize a newly created import element.
   */
  ImportElementImpl() : super.con1(null) {
  }
  List<NamespaceCombinator> get combinators => _combinators;
  LibraryElement get importedLibrary => _importedLibrary;
  ElementKind get kind => ElementKind.IMPORT;
  PrefixElement get prefix => _prefix;
  /**
   * Set the combinators that were specified as part of the import directive to the given array of
   * combinators.
   * @param combinators the combinators that were specified as part of the import directive
   */
  void set combinators3(List<NamespaceCombinator> combinators) {
    this._combinators = combinators;
  }
  /**
   * Set the library that is imported into this library by this import directive to the given
   * library.
   * @param importedLibrary the library that is imported into this library
   */
  void set importedLibrary2(LibraryElement importedLibrary) {
    this._importedLibrary = importedLibrary;
  }
  /**
   * Set the prefix that was specified as part of the import directive to the given prefix.
   * @param prefix the prefix that was specified as part of the import directive
   */
  void set prefix4(PrefixElement prefix) {
    this._prefix = prefix;
  }
}
/**
 * Instances of the class {@code LabelElementImpl} implement a {@code LabelElement}.
 */
class LabelElementImpl extends ElementImpl implements LabelElement {
  /**
   * A flag indicating whether this label is associated with a {@code switch} statement.
   */
  bool _onSwitchStatement = false;
  /**
   * A flag indicating whether this label is associated with a {@code switch} member ({@code case}or {@code default}).
   */
  bool _onSwitchMember = false;
  /**
   * An empty array of label elements.
   */
  static List<LabelElement> EMPTY_ARRAY = new List<LabelElement>.fixedLength(0);
  /**
   * Initialize a newly created label element to have the given name.
   * @param name the name of this element
   * @param onSwitchStatement {@code true} if this label is associated with a {@code switch}statement
   * @param onSwitchMember {@code true} if this label is associated with a {@code switch} member
   */
  LabelElementImpl(Identifier name, bool onSwitchStatement, bool onSwitchMember) : super.con1(name) {
    this._onSwitchStatement = onSwitchStatement;
    this._onSwitchMember = onSwitchMember;
  }
  ExecutableElement get enclosingElement => super.enclosingElement as ExecutableElement;
  ElementKind get kind => ElementKind.LABEL;
  /**
   * Return {@code true} if this label is associated with a {@code switch} member ({@code case} or{@code default}).
   * @return {@code true} if this label is associated with a {@code switch} member
   */
  bool isOnSwitchMember() => _onSwitchMember;
  /**
   * Return {@code true} if this label is associated with a {@code switch} statement.
   * @return {@code true} if this label is associated with a {@code switch} statement
   */
  bool isOnSwitchStatement() => _onSwitchStatement;
}
/**
 * Instances of the class {@code LibraryElementImpl} implement a {@code LibraryElement}.
 */
class LibraryElementImpl extends ElementImpl implements LibraryElement {
  /**
   * An empty array of library elements.
   */
  static List<LibraryElement> EMPTY_ARRAY = new List<LibraryElement>.fixedLength(0);
  /**
   * The analysis context in which this library is defined.
   */
  AnalysisContext _context;
  /**
   * The compilation unit that defines this library.
   */
  CompilationUnitElement _definingCompilationUnit;
  /**
   * The entry point for this library, or {@code null} if this library does not have an entry point.
   */
  FunctionElement _entryPoint;
  /**
   * An array containing specifications of all of the imports defined in this library.
   */
  List<ImportElement> _imports = ImportElement.EMPTY_ARRAY;
  /**
   * An array containing specifications of all of the exports defined in this library.
   */
  List<ExportElement> _exports = ExportElement.EMPTY_ARRAY;
  /**
   * An array containing all of the compilation units that are included in this library using a{@code part} directive.
   */
  List<CompilationUnitElement> _parts = CompilationUnitElementImpl.EMPTY_ARRAY;
  /**
   * Initialize a newly created library element to have the given name.
   * @param context the analysis context in which the library is defined
   * @param name the name of this element
   */
  LibraryElementImpl(AnalysisContext context, LibraryIdentifier name) : super.con1(name) {
    this._context = context;
  }
  bool operator ==(Object object) => this.runtimeType == object.runtimeType && _definingCompilationUnit == (object as LibraryElementImpl).definingCompilationUnit;
  ElementImpl getChild(String identifier) {
    if ((_definingCompilationUnit as CompilationUnitElementImpl).identifier == identifier) {
      return _definingCompilationUnit as CompilationUnitElementImpl;
    }
    for (CompilationUnitElement part in _parts) {
      if ((part as CompilationUnitElementImpl).identifier == identifier) {
        return part as CompilationUnitElementImpl;
      }
    }
    return null;
  }
  AnalysisContext get context => _context;
  CompilationUnitElement get definingCompilationUnit => _definingCompilationUnit;
  FunctionElement get entryPoint => _entryPoint;
  List<ExportElement> get exports => _exports;
  String get identifier => _definingCompilationUnit.source.fullName;
  List<LibraryElement> get importedLibraries {
    Set<LibraryElement> libraries = new Set<LibraryElement>();
    for (ImportElement element in _imports) {
      LibraryElement prefix = element.importedLibrary;
      javaSetAdd(libraries, prefix);
    }
    return new List.from(libraries);
  }
  List<ImportElement> get imports => _imports;
  ElementKind get kind => ElementKind.LIBRARY;
  List<CompilationUnitElement> get parts => _parts;
  List<PrefixElement> get prefixes {
    Set<PrefixElement> prefixes = new Set<PrefixElement>();
    for (ImportElement element in _imports) {
      PrefixElement prefix5 = element.prefix;
      if (prefix5 != null) {
        javaSetAdd(prefixes, prefix5);
      }
    }
    return new List.from(prefixes);
  }
  int get hashCode => _definingCompilationUnit.hashCode;
  /**
   * Set the compilation unit that defines this library to the given compilation unit.
   * @param definingCompilationUnit the compilation unit that defines this library
   */
  void set definingCompilationUnit2(CompilationUnitElement definingCompilationUnit) {
    (definingCompilationUnit as CompilationUnitElementImpl).enclosingElement2 = this;
    this._definingCompilationUnit = definingCompilationUnit;
  }
  /**
   * Set the entry point for this library to the given function.
   * @param entryPoint the entry point for this library
   */
  void set entryPoint2(FunctionElement entryPoint) {
    (entryPoint as FunctionElementImpl).enclosingElement2 = this;
    this._entryPoint = entryPoint;
  }
  /**
   * Set the specifications of all of the exports defined in this library to the given array.
   * @param exports the specifications of all of the exports defined in this library
   */
  void set exports2(List<ExportElement> exports) {
    this._exports = exports;
  }
  /**
   * Set the specifications of all of the imports defined in this library to the given array.
   * @param imports the specifications of all of the imports defined in this library
   */
  void set imports2(List<ImportElement> imports) {
    this._imports = imports;
  }
  /**
   * Set the compilation units that are included in this library using a {@code part} directive.
   * @param parts the compilation units that are included in this library using a {@code part}directive
   */
  void set parts2(List<CompilationUnitElement> parts) {
    for (CompilationUnitElement compilationUnit in parts) {
      (compilationUnit as CompilationUnitElementImpl).enclosingElement2 = this;
    }
    this._parts = parts;
  }
}
/**
 * Instances of the class {@code MethodElementImpl} implement a {@code MethodElement}.
 */
class MethodElementImpl extends ExecutableElementImpl implements MethodElement {
  /**
   * An empty array of method elements.
   */
  static List<MethodElement> EMPTY_ARRAY = new List<MethodElement>.fixedLength(0);
  /**
   * Initialize a newly created method element to have the given name.
   * @param name the name of this element
   */
  MethodElementImpl(Identifier name) : super.con1(name) {
  }
  ClassElement get enclosingElement => super.enclosingElement as ClassElement;
  ElementKind get kind => ElementKind.METHOD;
  bool isAbstract() => hasModifier(Modifier.ABSTRACT);
  bool isStatic() => hasModifier(Modifier.STATIC);
  /**
   * Set whether this method is abstract to correspond to the given value.
   * @param isAbstract {@code true} if the method is abstract
   */
  void set abstract(bool isAbstract) {
    setModifier(Modifier.ABSTRACT, isAbstract);
  }
  /**
   * Set whether this method is static to correspond to the given value.
   * @param isStatic {@code true} if the method is static
   */
  void set static(bool isStatic) {
    setModifier(Modifier.STATIC, isStatic);
  }
  String toString() {
    StringBuffer builder = new StringBuffer();
    builder.add("method ");
    builder.add(enclosingElement.name);
    builder.add(".");
    builder.add(name);
    builder.add(type);
    return builder.toString();
  }
}
/**
 * The enumeration {@code Modifier} defines constants for all of the modifiers defined by the Dart
 * language.
 */
class Modifier {
  static final Modifier ABSTRACT = new Modifier('ABSTRACT', 0);
  static final Modifier CONST = new Modifier('CONST', 1);
  static final Modifier FACTORY = new Modifier('FACTORY', 2);
  static final Modifier FINAL = new Modifier('FINAL', 3);
  static final Modifier GETTER = new Modifier('GETTER', 4);
  static final Modifier SETTER = new Modifier('SETTER', 5);
  static final Modifier STATIC = new Modifier('STATIC', 6);
  static final Modifier SYNTHETIC = new Modifier('SYNTHETIC', 7);
  static final List<Modifier> values = [ABSTRACT, CONST, FACTORY, FINAL, GETTER, SETTER, STATIC, SYNTHETIC];
  final String __name;
  final int __ordinal;
  Modifier(this.__name, this.__ordinal) {
  }
  String toString() => __name;
}
/**
 * Instances of the class {@code MultiplyDefinedElementImpl} represent a collection of elements that
 * have the same name within the same scope.
 */
class MultiplyDefinedElementImpl implements MultiplyDefinedElement {
  /**
   * The analysis context in which the multiply defined elements are defined.
   */
  AnalysisContext _context;
  /**
   * The name of the conflicting elements.
   */
  String _name;
  /**
   * A list containing all of the elements that conflict.
   */
  List<Element> _conflictingElements;
  /**
   * Initialize a newly created element to represent a list of conflicting elements.
   * @param context the analysis context in which the multiply defined elements are defined
   * @param firstElement the first element that conflicts
   * @param secondElement the second element that conflicts
   */
  MultiplyDefinedElementImpl(AnalysisContext context, Element firstElement, Element secondElement) {
    _name = firstElement.name;
    _conflictingElements = computeConflictingElements(firstElement, secondElement);
  }
  Element getAncestor(Type elementClass) => null;
  List<Element> get conflictingElements => _conflictingElements;
  AnalysisContext get context => _context;
  Element get enclosingElement => null;
  ElementKind get kind => ElementKind.ERROR;
  LibraryElement get library => null;
  ElementLocation get location => null;
  List<Annotation> get metadata => AnnotationImpl.EMPTY_ARRAY;
  String get name => _name;
  int get nameOffset => -1;
  bool isSynthetic() => true;
  /**
   * Add the given element to the list of elements. If the element is a multiply-defined element,
   * add all of the conflicting elements that it represents.
   * @param elements the list to which the element(s) are to be added
   * @param element the element(s) to be added
   */
  void add(List<Element> elements, Element element) {
    if (element is MultiplyDefinedElementImpl) {
      for (Element conflictingElement in (element as MultiplyDefinedElementImpl)._conflictingElements) {
        elements.add(conflictingElement);
      }
    } else {
      elements.add(element);
    }
  }
  /**
   * Use the given elements to construct an array of conflicting elements. If either of the given
   * elements are multiply-defined elements then the conflicting elements they represent will be
   * included in the array. Otherwise, the element itself will be included.
   * @param firstElement the first element to be included
   * @param secondElement the second element to be included
   * @return an array containing all of the conflicting elements
   */
  List<Element> computeConflictingElements(Element firstElement, Element secondElement) {
    List<Element> elements = new List<Element>();
    add(elements, firstElement);
    add(elements, secondElement);
    return new List.from(elements);
  }
}
/**
 * Instances of the class {@code ParameterElementImpl} implement a {@code ParameterElement}.
 */
class ParameterElementImpl extends VariableElementImpl implements ParameterElement {
  /**
   * The kind of this parameter.
   */
  ParameterKind _parameterKind;
  /**
   * An empty array of field elements.
   */
  static List<ParameterElement> EMPTY_ARRAY = new List<ParameterElement>.fixedLength(0);
  /**
   * Initialize a newly created parameter element to have the given name.
   * @param name the name of this element
   */
  ParameterElementImpl(Identifier name) : super.con1(name) {
  }
  ElementKind get kind => ElementKind.PARAMETER;
  ParameterKind get parameterKind => _parameterKind;
  /**
   * Set the kind of this parameter to the given kind.
   * @param parameterKind the new kind of this parameter
   */
  void set parameterKind2(ParameterKind parameterKind) {
    this._parameterKind = parameterKind;
  }
  String toString() => "parameter ${type} ${name} (${kind})";
}
/**
 * Instances of the class {@code PrefixElementImpl} implement a {@code PrefixElement}.
 */
class PrefixElementImpl extends ElementImpl implements PrefixElement {
  /**
   * An array containing all of the libraries that are imported using this prefix.
   */
  List<LibraryElement> _importedLibraries = LibraryElementImpl.EMPTY_ARRAY;
  /**
   * An empty array of prefix elements.
   */
  static List<PrefixElement> EMPTY_ARRAY = new List<PrefixElement>.fixedLength(0);
  /**
   * Initialize a newly created prefix element to have the given name.
   * @param name the name of this element
   */
  PrefixElementImpl(Identifier name) : super.con1(name) {
  }
  LibraryElement get enclosingElement => super.enclosingElement as LibraryElement;
  List<LibraryElement> get importedLibraries => _importedLibraries;
  ElementKind get kind => ElementKind.PREFIX;
  /**
   * Set the libraries that are imported using this prefix to the given libraries.
   * @param importedLibraries the libraries that are imported using this prefix
   */
  void set importedLibraries2(List<LibraryElement> importedLibraries) {
    for (LibraryElement library in importedLibraries) {
      (library as LibraryElementImpl).enclosingElement2 = this;
    }
    this._importedLibraries = importedLibraries;
  }
}
/**
 * Instances of the class {@code PropertyAccessorElementImpl} implement a{@code PropertyAccessorElement}.
 */
class PropertyAccessorElementImpl extends ExecutableElementImpl implements PropertyAccessorElement {
  /**
   * The field associated with this accessor.
   */
  FieldElement _field;
  /**
   * An empty array of property accessor elements.
   */
  static List<PropertyAccessorElement> EMPTY_ARRAY = new List<PropertyAccessorElement>.fixedLength(0);
  /**
   * Initialize a newly created synthetic property accessor element to be associated with the given
   * field.
   * @param name the name of this element
   */
  PropertyAccessorElementImpl.con1(FieldElementImpl field) : super.con2(field.name, -1) {
    _jtd_constructor_150_impl(field);
  }
  _jtd_constructor_150_impl(FieldElementImpl field) {
    this._field = field;
    synthetic = true;
  }
  /**
   * Initialize a newly created property accessor element to have the given name.
   * @param name the name of this element
   */
  PropertyAccessorElementImpl.con2(Identifier name) : super.con1(name) {
    _jtd_constructor_151_impl(name);
  }
  _jtd_constructor_151_impl(Identifier name) {
  }
  FieldElement get field => _field;
  ElementKind get kind {
    if (isGetter()) {
      return ElementKind.GETTER;
    }
    return ElementKind.SETTER;
  }
  bool isGetter() => hasModifier(Modifier.GETTER);
  bool isSetter() => hasModifier(Modifier.SETTER);
  /**
   * Set the field associated with this accessor to the given field.
   * @param field the field associated with this accessor
   */
  void set field2(FieldElement field) {
    this._field = field;
  }
  /**
   * Set whether this accessor is a getter to correspond to the given value.
   * @param isGetter {@code true} if the accessor is a getter
   */
  void set getter(bool isGetter) {
    setModifier(Modifier.GETTER, isGetter);
  }
  /**
   * Set whether this accessor is a setter to correspond to the given value.
   * @param isSetter {@code true} if the accessor is a setter
   */
  void set setter(bool isSetter) {
    setModifier(Modifier.SETTER, isSetter);
  }
}
/**
 * Instances of the class {@code ShowCombinatorImpl} implement a {@link ShowCombinator}.
 */
class ShowCombinatorImpl implements ShowCombinator {
  /**
   * The names that are to be made visible in the importing library if they are defined in the
   * imported library.
   */
  List<String> _shownNames = StringUtilities.EMPTY_ARRAY;
  /**
   * Initialize a newly created combinator.
   */
  ShowCombinatorImpl() : super() {
  }
  List<String> get shownNames => _shownNames;
  /**
   * Set the names that are to be made visible in the importing library if they are defined in the
   * imported library to the given names.
   * @param shownNames the names that are to be made visible in the importing library
   */
  void set shownNames2(List<String> shownNames) {
    this._shownNames = shownNames;
  }
}
/**
 * Instances of the class {@code TypeAliasElementImpl} implement a {@code TypeAliasElement}.
 */
class TypeAliasElementImpl extends ElementImpl implements TypeAliasElement {
  /**
   * An array containing all of the parameters defined by this type alias.
   */
  List<ParameterElement> _parameters = ParameterElementImpl.EMPTY_ARRAY;
  /**
   * The type of function defined by this type alias.
   */
  FunctionType _type;
  /**
   * An array containing all of the type variables defined for this type.
   */
  List<TypeVariableElement> _typeVariables = TypeVariableElementImpl.EMPTY_ARRAY;
  /**
   * An empty array of type alias elements.
   */
  static List<TypeAliasElement> EMPTY_ARRAY = new List<TypeAliasElement>.fixedLength(0);
  /**
   * Initialize a newly created type alias element to have the given name.
   * @param name the name of this element
   */
  TypeAliasElementImpl(Identifier name) : super.con1(name) {
  }
  ElementImpl getChild(String identifier) {
    for (VariableElement parameter in _parameters) {
      if ((parameter as VariableElementImpl).identifier == identifier) {
        return parameter as VariableElementImpl;
      }
    }
    for (TypeVariableElement typeVariable in _typeVariables) {
      if ((typeVariable as TypeVariableElementImpl).identifier == identifier) {
        return typeVariable as TypeVariableElementImpl;
      }
    }
    return null;
  }
  CompilationUnitElement get enclosingElement => super.enclosingElement as CompilationUnitElement;
  ElementKind get kind => ElementKind.TYPE_ALIAS;
  List<ParameterElement> get parameters => _parameters;
  FunctionType get type => _type;
  List<TypeVariableElement> get typeVariables => _typeVariables;
  /**
   * Set the parameters defined by this type alias to the given parameters.
   * @param parameters the parameters defined by this type alias
   */
  void set parameters8(List<ParameterElement> parameters) {
    if (parameters != null) {
      for (ParameterElement parameter in parameters) {
        (parameter as ParameterElementImpl).enclosingElement2 = this;
      }
    }
    this._parameters = parameters;
  }
  /**
   * Set the type of function defined by this type alias to the given type.
   * @param type the type of function defined by this type alias
   */
  void set type12(FunctionType type) {
    this._type = type;
  }
  /**
   * Set the type variables defined for this type to the given variables.
   * @param typeVariables the type variables defined for this type
   */
  void set typeVariables3(List<TypeVariableElement> typeVariables) {
    for (TypeVariableElement variable in typeVariables) {
      (variable as TypeVariableElementImpl).enclosingElement2 = this;
    }
    this._typeVariables = typeVariables;
  }
}
/**
 * Instances of the class {@code TypeVariableElementImpl} implement a {@code TypeVariableElement}.
 */
class TypeVariableElementImpl extends ElementImpl implements TypeVariableElement {
  /**
   * The type defined by this type variable.
   */
  TypeVariableType _type;
  /**
   * The type representing the bound associated with this variable, or {@code null} if this variable
   * does not have an explicit bound.
   */
  Type2 _bound;
  /**
   * An empty array of type variable elements.
   */
  static List<TypeVariableElement> EMPTY_ARRAY = new List<TypeVariableElement>.fixedLength(0);
  /**
   * Initialize a newly created type variable element to have the given name.
   * @param name the name of this element
   */
  TypeVariableElementImpl(Identifier name) : super.con1(name) {
  }
  Type2 get bound => _bound;
  ElementKind get kind => ElementKind.TYPE_VARIABLE;
  TypeVariableType get type => _type;
  /**
   * Set the type representing the bound associated with this variable to the given type.
   * @param bound the type representing the bound associated with this variable
   */
  void set bound3(Type2 bound) {
    this._bound = bound;
  }
  /**
   * Set the type defined by this type variable to the given type
   * @param type the type defined by this type variable
   */
  void set type13(TypeVariableType type) {
    this._type = type;
  }
}
/**
 * Instances of the class {@code VariableElementImpl} implement a {@code VariableElement}.
 */
class VariableElementImpl extends ElementImpl implements VariableElement {
  /**
   * The declared type of this variable.
   */
  Type2 _type;
  /**
   * A synthetic function representing this variable's initializer, or {@code null} if this variable
   * does not have an initializer.
   */
  FunctionElement _initializer;
  /**
   * An empty array of variable elements.
   */
  static List<VariableElement> EMPTY_ARRAY = new List<VariableElement>.fixedLength(0);
  /**
   * Initialize a newly created variable element to have the given name.
   * @param name the name of this element
   */
  VariableElementImpl.con1(Identifier name) : super.con1(name) {
    _jtd_constructor_155_impl(name);
  }
  _jtd_constructor_155_impl(Identifier name) {
  }
  /**
   * Initialize a newly created variable element to have the given name.
   * @param name the name of this element
   * @param nameOffset the offset of the name of this element in the file that contains the
   * declaration of this element
   */
  VariableElementImpl.con2(String name, int nameOffset) : super.con2(name, nameOffset) {
    _jtd_constructor_156_impl(name, nameOffset);
  }
  _jtd_constructor_156_impl(String name, int nameOffset) {
  }
  FunctionElement get initializer => _initializer;
  ElementKind get kind => ElementKind.VARIABLE;
  Type2 get type => _type;
  bool isConst() => hasModifier(Modifier.CONST);
  bool isFinal() => hasModifier(Modifier.FINAL);
  /**
   * Set whether this variable is const to correspond to the given value.
   * @param isConst {@code true} if the variable is const
   */
  void set const2(bool isConst) {
    setModifier(Modifier.CONST, isConst);
  }
  /**
   * Set whether this variable is final to correspond to the given value.
   * @param isFinal {@code true} if the variable is final
   */
  void set final2(bool isFinal) {
    setModifier(Modifier.FINAL, isFinal);
  }
  /**
   * Set the function representing this variable's initializer to the given function.
   * @param initializer the function representing this variable's initializer
   */
  void set initializer3(FunctionElement initializer) {
    if (initializer != null) {
      (initializer as FunctionElementImpl).enclosingElement2 = this;
    }
    this._initializer = initializer;
  }
  /**
   * Set the declared type of this variable to the given type.
   * @param type the declared type of this variable
   */
  void set type14(Type2 type) {
    this._type = type;
  }
  String toString() => "variable ${type} ${name}";
}
/**
 * The unique instance of the class {@code BottomTypeImpl} implements the type {@code bottom}.
 */
class BottomTypeImpl extends TypeImpl {
  /**
   * The unique instance of this class.
   */
  static BottomTypeImpl _INSTANCE = new BottomTypeImpl();
  /**
   * Return the unique instance of this class.
   * @return the unique instance of this class
   */
  static BottomTypeImpl get instance => _INSTANCE;
  /**
   * Prevent the creation of instances of this class.
   */
  BottomTypeImpl() : super(null, "<bottom>") {
  }
  bool operator ==(Object object) => object == this;
  bool isMoreSpecificThan(Type2 type) => true;
  bool isSubtypeOf(Type2 type) => true;
  bool isSupertypeOf(Type2 type) => false;
  BottomTypeImpl substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes) => this;
}
/**
 * The unique instance of the class {@code DynamicTypeImpl} implements the type {@code dynamic}.
 */
class DynamicTypeImpl extends TypeImpl {
  /**
   * The unique instance of this class.
   */
  static DynamicTypeImpl _INSTANCE = new DynamicTypeImpl();
  /**
   * Return the unique instance of this class.
   * @return the unique instance of this class
   */
  static DynamicTypeImpl get instance => _INSTANCE;
  /**
   * Prevent the creation of instances of this class.
   */
  DynamicTypeImpl() : super(new DynamicElementImpl(), Keyword.DYNAMIC.syntax) {
    (element as DynamicElementImpl).type10 = this;
  }
  bool operator ==(Object object) => object is DynamicTypeImpl;
  bool isMoreSpecificThan(Type2 type) => false;
  bool isSubtypeOf(Type2 type) => false;
  bool isSupertypeOf(Type2 type) => true;
  DynamicTypeImpl substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes) => this;
}
/**
 * Instances of the class {@code FunctionTypeImpl} defines the behavior common to objects
 * representing the type of a function, method, constructor, getter, or setter.
 */
class FunctionTypeImpl extends TypeImpl implements FunctionType {
  /**
   * Return {@code true} if all of the types in the first array are equal to the corresponding types
   * in the second array.
   * @param firstTypes the first array of types being compared
   * @param secondTypes the second array of types being compared
   * @return {@code true} if all of the types in the first array are equal to the corresponding
   * types in the second array
   */
  static bool equals2(LinkedHashMap<String, Type2> firstTypes, LinkedHashMap<String, Type2> secondTypes) {
    if (secondTypes.length != firstTypes.length) {
      return false;
    }
    HasNextIterator<MapEntry<String, Type2>> firstIterator = new HasNextIterator(getMapEntrySet(firstTypes).iterator);
    HasNextIterator<MapEntry<String, Type2>> secondIterator = new HasNextIterator(getMapEntrySet(firstTypes).iterator);
    while (firstIterator.hasNext) {
      MapEntry<String, Type2> firstEntry = firstIterator.next();
      MapEntry<String, Type2> secondEntry = secondIterator.next();
      if (firstEntry.getKey() != secondEntry.getKey() || firstEntry.getValue() != secondEntry.getValue()) {
        return false;
      }
    }
    return true;
  }
  /**
   * Return a map containing the results of using the given argument types and parameter types to
   * perform a substitution on all of the values in the given map. The order of the entries will be
   * preserved.
   * @param types the types on which a substitution is to be performed
   * @param argumentTypes the argument types for the substitution
   * @param parameterTypes the parameter types for the substitution
   * @return the result of performing the substitution on each of the types
   */
  static LinkedHashMap<String, Type2> substitute3(LinkedHashMap<String, Type2> types, List<Type2> argumentTypes, List<Type2> parameterTypes) {
    LinkedHashMap<String, Type2> newTypes = new LinkedHashMap<String, Type2>();
    for (MapEntry<String, Type2> entry in getMapEntrySet(types)) {
      newTypes[entry.getKey()] = entry.getValue().substitute2(argumentTypes, parameterTypes);
    }
    return newTypes;
  }
  /**
   * An array containing the actual types of the type arguments.
   */
  List<Type2> _typeArguments = TypeImpl.EMPTY_ARRAY;
  /**
   * An array containing the types of the normal parameters of this type of function. The parameter
   * types are in the same order as they appear in the declaration of the function.
   * @return the types of the normal parameters of this type of function
   */
  List<Type2> _normalParameterTypes = TypeImpl.EMPTY_ARRAY;
  /**
   * A table mapping the names of optional (positional) parameters to the types of the optional
   * parameters of this type of function.
   */
  List<Type2> _optionalParameterTypes = TypeImpl.EMPTY_ARRAY;
  /**
   * A table mapping the names of named parameters to the types of the named parameters of this type
   * of function.
   */
  LinkedHashMap<String, Type2> _namedParameterTypes = new LinkedHashMap<String, Type2>();
  /**
   * The type of object returned by this type of function.
   */
  Type2 _returnType = VoidTypeImpl.instance;
  /**
   * Initialize a newly created function type to be declared by the given element and to have the
   * given name.
   * @param element the element representing the declaration of the function type
   */
  FunctionTypeImpl.con1(ExecutableElement element) : super(element, element == null ? null : element.name) {
    _jtd_constructor_200_impl(element);
  }
  _jtd_constructor_200_impl(ExecutableElement element) {
  }
  /**
   * Initialize a newly created function type to be declared by the given element and to have the
   * given name.
   * @param element the element representing the declaration of the function type
   */
  FunctionTypeImpl.con2(TypeAliasElement element) : super(element, element == null ? null : element.name) {
    _jtd_constructor_201_impl(element);
  }
  _jtd_constructor_201_impl(TypeAliasElement element) {
  }
  bool operator ==(Object object) {
    if (object is! FunctionTypeImpl) {
      return false;
    }
    FunctionTypeImpl otherType = object as FunctionTypeImpl;
    return element == otherType.element && JavaArrays.equals(_normalParameterTypes, otherType._normalParameterTypes) && JavaArrays.equals(_optionalParameterTypes, otherType._optionalParameterTypes) && equals2(_namedParameterTypes, otherType._namedParameterTypes);
  }
  Map<String, Type2> get namedParameterTypes => _namedParameterTypes;
  List<Type2> get normalParameterTypes => _normalParameterTypes;
  List<Type2> get optionalParameterTypes => _optionalParameterTypes;
  Type2 get returnType => _returnType;
  List<Type2> get typeArguments => _typeArguments;
  int get hashCode {
    Element element29 = element;
    if (element29 == null) {
      return 0;
    }
    return element29.hashCode;
  }
  bool isSubtypeOf(Type2 type) {
    if (type == null || type is! FunctionType) {
      return false;
    } else if (this == type || this == type) {
      return true;
    }
    FunctionType t = this;
    FunctionType s = type as FunctionType;
    if (t.normalParameterTypes.length != s.normalParameterTypes.length) {
      return false;
    } else if (t.normalParameterTypes.length > 0) {
      List<Type2> tTypes = t.normalParameterTypes;
      List<Type2> sTypes = s.normalParameterTypes;
      for (int i = 0; i < tTypes.length; i++) {
        if (!tTypes[i].isAssignableTo(sTypes[i])) {
          return false;
        }
      }
    }
    if (t.optionalParameterTypes.length > 0) {
      List<Type2> tOpTypes = t.optionalParameterTypes;
      List<Type2> sOpTypes = s.optionalParameterTypes;
      if (tOpTypes.length < sOpTypes.length) {
        return false;
      }
      for (int i = 0; i < sOpTypes.length; i++) {
        if (!tOpTypes[i].isAssignableTo(sOpTypes[i])) {
          return false;
        }
      }
      if (t.namedParameterTypes.length > 0 || s.namedParameterTypes.length > 0) {
        return false;
      }
    } else if (s.optionalParameterTypes.length > 0) {
      return false;
    }
    if (t.namedParameterTypes.length > 0) {
      Map<String, Type2> namedTypesT = t.namedParameterTypes;
      Map<String, Type2> namedTypesS = s.namedParameterTypes;
      if (namedTypesT.length < namedTypesS.length) {
        return false;
      }
      HasNextIterator<MapEntry<String, Type2>> iteratorS = new HasNextIterator(getMapEntrySet(namedTypesS).iterator);
      while (iteratorS.hasNext) {
        MapEntry<String, Type2> entryS = iteratorS.next();
        Type2 typeT = namedTypesT[entryS.getKey()];
        if (typeT == null) {
          return false;
        }
        if (!entryS.getValue().isAssignableTo(typeT)) {
          return false;
        }
      }
    } else if (s.namedParameterTypes.length > 0) {
      return false;
    }
    return s.returnType == VoidTypeImpl.instance || t.returnType.isAssignableTo(s.returnType);
  }
  /**
   * Set the mapping of the names of named parameters to the types of the named parameters of this
   * type of function to the given mapping.
   * @param namedParameterTypes the mapping of the names of named parameters to the types of the
   * named parameters of this type of function
   */
  void set namedParameterTypes2(LinkedHashMap<String, Type2> namedParameterTypes) {
    this._namedParameterTypes = namedParameterTypes;
  }
  /**
   * Set the types of the normal parameters of this type of function to the types in the given
   * array.
   * @param normalParameterTypes the types of the normal parameters of this type of function
   */
  void set normalParameterTypes2(List<Type2> normalParameterTypes) {
    this._normalParameterTypes = normalParameterTypes;
  }
  /**
   * Set the types of the optional parameters of this type of function to the types in the given
   * array.
   * @param optionalParameterTypes the types of the optional parameters of this type of function
   */
  void set optionalParameterTypes2(List<Type2> optionalParameterTypes) {
    this._optionalParameterTypes = optionalParameterTypes;
  }
  /**
   * Set the type of object returned by this type of function to the given type.
   * @param returnType the type of object returned by this type of function
   */
  void set returnType7(Type2 returnType) {
    this._returnType = returnType;
  }
  /**
   * Set the actual types of the type arguments to the given types.
   * @param typeArguments the actual types of the type arguments
   */
  void set typeArguments4(List<Type2> typeArguments) {
    this._typeArguments = typeArguments;
  }
  FunctionTypeImpl substitute4(List<Type2> argumentTypes) => substitute2(argumentTypes, typeArguments);
  FunctionTypeImpl substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes) {
    if (argumentTypes.length != parameterTypes.length) {
      throw new IllegalArgumentException("argumentTypes.length (${argumentTypes.length}) != parameterTypes.length (${parameterTypes.length})");
    }
    if (argumentTypes.length == 0) {
      return this;
    }
    Element element30 = element;
    FunctionTypeImpl newType = (element30 is ExecutableElement) ? new FunctionTypeImpl.con1(element30 as ExecutableElement) : new FunctionTypeImpl.con2(element30 as TypeAliasElement);
    newType.returnType7 = _returnType.substitute2(argumentTypes, parameterTypes);
    newType.normalParameterTypes2 = TypeImpl.substitute(_normalParameterTypes, argumentTypes, parameterTypes);
    newType.optionalParameterTypes2 = TypeImpl.substitute(_optionalParameterTypes, argumentTypes, parameterTypes);
    newType.namedParameterTypes2 = substitute3(_namedParameterTypes, argumentTypes, parameterTypes);
    return newType;
  }
  String toString() {
    StringBuffer builder = new StringBuffer();
    builder.add("(");
    bool needsComma = false;
    if (_normalParameterTypes.length > 0) {
      for (Type2 type in _normalParameterTypes) {
        if (needsComma) {
          builder.add(", ");
        } else {
          needsComma = true;
        }
        builder.add(type);
      }
    }
    if (_optionalParameterTypes.length > 0) {
      if (needsComma) {
        builder.add(", ");
        needsComma = false;
      }
      builder.add("[");
      for (Type2 type in _optionalParameterTypes) {
        if (needsComma) {
          builder.add(", ");
        } else {
          needsComma = true;
        }
        builder.add(type);
      }
      builder.add("]");
      needsComma = true;
    }
    if (_namedParameterTypes.length > 0) {
      if (needsComma) {
        builder.add(", ");
        needsComma = false;
      }
      builder.add("{");
      for (MapEntry<String, Type2> entry in getMapEntrySet(_namedParameterTypes)) {
        if (needsComma) {
          builder.add(", ");
        } else {
          needsComma = true;
        }
        builder.add(entry.getKey());
        builder.add(": ");
        builder.add(entry.getValue());
      }
      builder.add("}");
      needsComma = true;
    }
    builder.add(") -> ");
    builder.add(_returnType);
    return builder.toString();
  }
}
/**
 * Instances of the class {@code InterfaceTypeImpl} defines the behavior common to objects
 * representing the type introduced by either a class or an interface, or a reference to such a
 * type.
 */
class InterfaceTypeImpl extends TypeImpl implements InterfaceType {
  /**
   * An empty array of types.
   */
  static List<InterfaceType> EMPTY_ARRAY = new List<InterfaceType>.fixedLength(0);
  /**
   * This method computes the longest inheritance path from some passed {@link Type} to Object.
   * @param type the {@link Type} to compute the longest inheritance path of from the passed{@link Type} to Object
   * @return the computed longest inheritance path to Object
   * @see #computeLongestInheritancePathToObject(Type,int)
   * @see InterfaceType#getLeastUpperBound(Type)
   */
  static int computeLongestInheritancePathToObject(InterfaceType type) => computeLongestInheritancePathToObject2(type, 0);
  /**
   * Returns the set of all superinterfaces of the passed {@link Type}.
   * @param type the {@link Type} to compute the set of superinterfaces of
   * @return the {@link Set} of superinterfaces of the passed {@link Type}
   * @see #computeSuperinterfaceSet(Type,HashSet)
   * @see #getLeastUpperBound(Type)
   */
  static Set<InterfaceType> computeSuperinterfaceSet(InterfaceType type) => computeSuperinterfaceSet2(type, new Set<InterfaceType>());
  /**
   * This method computes the longest inheritance path from some passed {@link Type} to Object. This
   * method calls itself recursively, callers should use the public method{@link #computeLongestInheritancePathToObject(Type)}.
   * @param type the {@link Type} to compute the longest inheritance path of from the passed{@link Type} to Object
   * @param depth a field used recursively
   * @return the computed longest inheritance path to Object
   * @see #computeLongestInheritancePathToObject(Type)
   * @see #getLeastUpperBound(Type)
   */
  static int computeLongestInheritancePathToObject2(InterfaceType type, int depth) {
    ClassElement classElement = type.element;
    if (classElement.supertype == null) {
      return depth;
    }
    List<InterfaceType> superinterfaces = classElement.interfaces;
    int longestPath = 1;
    int pathLength;
    if (superinterfaces.length > 0) {
      for (InterfaceType superinterface in superinterfaces) {
        pathLength = computeLongestInheritancePathToObject2(superinterface, depth + 1);
        if (pathLength > longestPath) {
          longestPath = pathLength;
        }
      }
    }
    InterfaceType supertype3 = classElement.supertype;
    pathLength = computeLongestInheritancePathToObject2(supertype3, depth + 1);
    if (pathLength > longestPath) {
      longestPath = pathLength;
    }
    return longestPath;
  }
  /**
   * Returns the set of all superinterfaces of the passed {@link Type}. This is a recursive method,
   * callers should call the public {@link #computeSuperinterfaceSet(Type)}.
   * @param type the {@link Type} to compute the set of superinterfaces of
   * @param set a {@link HashSet} used recursively by this method
   * @return the {@link Set} of superinterfaces of the passed {@link Type}
   * @see #computeSuperinterfaceSet(Type)
   * @see #getLeastUpperBound(Type)
   */
  static Set<InterfaceType> computeSuperinterfaceSet2(InterfaceType type, Set<InterfaceType> set) {
    Element element31 = type.element;
    if (element31 != null && element31 is ClassElement) {
      ClassElement classElement = element31 as ClassElement;
      List<InterfaceType> superinterfaces = classElement.interfaces;
      for (InterfaceType superinterface in superinterfaces) {
        javaSetAdd(set, superinterface);
        computeSuperinterfaceSet2(superinterface, set);
      }
      InterfaceType supertype4 = classElement.supertype;
      if (supertype4 != null) {
        javaSetAdd(set, supertype4);
        computeSuperinterfaceSet2(supertype4, set);
      }
    }
    return set;
  }
  /**
   * An array containing the actual types of the type arguments.
   */
  List<Type2> _typeArguments = TypeImpl.EMPTY_ARRAY;
  /**
   * Initialize a newly created type to be declared by the given element.
   * @param element the element representing the declaration of the type
   */
  InterfaceTypeImpl.con1(ClassElement element) : super(element, element.name) {
    _jtd_constructor_202_impl(element);
  }
  _jtd_constructor_202_impl(ClassElement element) {
  }
  /**
   * Initialize a newly created type to have the given name. This constructor should only be used in
   * cases where there is no declaration of the type.
   * @param name the name of the type
   */
  InterfaceTypeImpl.con2(String name) : super(null, name) {
    _jtd_constructor_203_impl(name);
  }
  _jtd_constructor_203_impl(String name) {
  }
  bool operator ==(Object object) {
    if (object is! InterfaceTypeImpl) {
      return false;
    }
    InterfaceTypeImpl otherType = object as InterfaceTypeImpl;
    return element == otherType.element && JavaArrays.equals(_typeArguments, otherType._typeArguments);
  }
  ClassElement get element => super.element as ClassElement;
  Type2 getLeastUpperBound(Type2 type) {
    Type2 dynamicType = DynamicTypeImpl.instance;
    if (this == dynamicType || type == dynamicType) {
      return dynamicType;
    }
    if (type == null || type is! InterfaceType) {
      return null;
    }
    InterfaceType i = this;
    InterfaceType j = type as InterfaceType;
    Set<InterfaceType> si = computeSuperinterfaceSet(i);
    Set<InterfaceType> sj = computeSuperinterfaceSet(j);
    javaSetAdd(si, i);
    javaSetAdd(sj, j);
    si.retainAll(sj);
    Set<InterfaceType> s = si;
    List<InterfaceType> sn = new List.from(s);
    List<int> depths = new List<int>.fixedLength(sn.length);
    int maxDepth = 0;
    for (int n = 0; n < sn.length; n++) {
      depths[n] = computeLongestInheritancePathToObject(sn[n]);
      if (depths[n] > maxDepth) {
        maxDepth = depths[n];
      }
    }
    for (; maxDepth >= 0; maxDepth--) {
      int indexOfLeastUpperBound = -1;
      int numberOfTypesAtMaxDepth = 0;
      for (int m = 0; m < depths.length; m++) {
        if (depths[m] == maxDepth) {
          numberOfTypesAtMaxDepth++;
          indexOfLeastUpperBound = m;
        }
      }
      if (numberOfTypesAtMaxDepth == 1) {
        return sn[indexOfLeastUpperBound];
      }
    }
    return null;
  }
  Type2 get superclass {
    ClassElement classElement = element;
    return element.supertype.substitute2(_typeArguments, TypeVariableTypeImpl.getTypes(classElement.typeVariables));
  }
  List<Type2> get typeArguments => _typeArguments;
  int get hashCode {
    ClassElement element32 = element;
    if (element32 == null) {
      return 0;
    }
    return element32.hashCode;
  }
  bool isDirectSupertypeOf(InterfaceType type) {
    ClassElement i = element;
    ClassElement j = type.element;
    Type2 supertype5 = j.supertype;
    if (supertype5 == null) {
      return false;
    }
    ClassElement supertypeElement = supertype5.element as ClassElement;
    if (supertypeElement == i) {
      return true;
    }
    for (Type2 interfaceType in j.interfaces) {
      if (interfaceType == i) {
        return true;
      }
    }
    for (Type2 mixinType in j.mixins) {
      if (mixinType == i) {
        return true;
      }
    }
    return false;
  }
  bool isMoreSpecificThan(Type2 type) {
    if (type == DynamicTypeImpl.instance) {
      return true;
    } else if (type is! InterfaceType) {
      return false;
    }
    InterfaceType s = type as InterfaceType;
    if (this == s) {
      return true;
    }
    if (s.isDirectSupertypeOf(this)) {
      return true;
    }
    ClassElement tElement = element;
    ClassElement sElement = s.element;
    if (tElement == sElement) {
      List<Type2> tArguments = typeArguments;
      List<Type2> sArguments = s.typeArguments;
      if (tArguments.length != sArguments.length) {
        return false;
      }
      for (int i = 0; i < tArguments.length; i++) {
        if (!tArguments[i].isMoreSpecificThan(sArguments[i])) {
          return false;
        }
      }
      return true;
    }
    if (element.supertype == null) {
      return false;
    }
    return element.supertype.isMoreSpecificThan(type);
  }
  bool isSubtypeOf(Type2 type) {
    if (type == DynamicTypeImpl.instance) {
      return true;
    } else if (type is TypeVariableType) {
      return true;
    } else if (type is! InterfaceType) {
      return false;
    } else if (this == type) {
      return true;
    }
    InterfaceType typeT = this;
    InterfaceType typeS = type as InterfaceType;
    ClassElement elementT = element;
    if (elementT == null) {
      return false;
    }
    typeT = substitute2(_typeArguments, TypeVariableTypeImpl.getTypes(elementT.typeVariables));
    if (typeT == typeS) {
      return true;
    } else if (elementT == typeS.element) {
      List<Type2> typeTArgs = typeT.typeArguments;
      List<Type2> typeSArgs = typeS.typeArguments;
      if (typeTArgs.length != typeSArgs.length) {
        return false;
      }
      for (int i = 0; i < typeTArgs.length; i++) {
        if (!typeTArgs[i].isSubtypeOf(typeSArgs[i])) {
          return false;
        }
      }
      return true;
    }
    Type2 supertype6 = elementT.supertype;
    if (supertype6 == null) {
      return false;
    }
    List<Type2> interfaceTypes = elementT.interfaces;
    for (Type2 interfaceType in interfaceTypes) {
      if (interfaceType.isSubtypeOf(typeS)) {
        return true;
      }
    }
    List<Type2> mixinTypes = elementT.mixins;
    for (Type2 mixinType in mixinTypes) {
      if (mixinType == typeS) {
        return true;
      }
    }
    return supertype6.isSubtypeOf(typeS);
  }
  /**
   * Set the actual types of the type arguments to those in the given array.
   * @param typeArguments the actual types of the type arguments
   */
  void set typeArguments5(List<Type2> typeArguments) {
    this._typeArguments = typeArguments;
  }
  InterfaceTypeImpl substitute5(List<Type2> argumentTypes) => substitute2(argumentTypes, typeArguments);
  InterfaceTypeImpl substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes) {
    if (argumentTypes.length != parameterTypes.length) {
      throw new IllegalArgumentException("argumentTypes.length (${argumentTypes.length}) != parameterTypes.length (${parameterTypes.length})");
    }
    if (argumentTypes.length == 0) {
      return this;
    }
    InterfaceTypeImpl newType = new InterfaceTypeImpl.con1(element);
    newType.typeArguments5 = TypeImpl.substitute(_typeArguments, argumentTypes, parameterTypes);
    return newType;
  }
}
/**
 * The abstract class {@code TypeImpl} implements the behavior common to objects representing the
 * declared type of elements in the element model.
 */
abstract class TypeImpl implements Type2 {
  /**
   * Return an array containing the results of using the given argument types and parameter types to
   * perform a substitution on all of the given types.
   * @param types the types on which a substitution is to be performed
   * @param argumentTypes the argument types for the substitution
   * @param parameterTypes the parameter types for the substitution
   * @return the result of performing the substitution on each of the types
   */
  static List<Type2> substitute(List<Type2> types, List<Type2> argumentTypes, List<Type2> parameterTypes) {
    int length6 = types.length;
    List<Type2> newTypes = new List<Type2>.fixedLength(length6);
    for (int i = 0; i < length6; i++) {
      newTypes[i] = types[i].substitute2(argumentTypes, parameterTypes);
    }
    return newTypes;
  }
  /**
   * The element representing the declaration of this type, or {@code null} if the type has not, or
   * cannot, be associated with an element.
   */
  Element _element;
  /**
   * The name of this type, or {@code null} if the type does not have a name.
   */
  String _name;
  /**
   * An empty array of types.
   */
  static List<Type2> EMPTY_ARRAY = new List<Type2>.fixedLength(0);
  /**
   * Initialize a newly created type to be declared by the given element and to have the given name.
   * @param element the element representing the declaration of the type
   * @param name the name of the type
   */
  TypeImpl(Element element, String name) {
    this._element = element;
    this._name = name;
  }
  Element get element => _element;
  Type2 getLeastUpperBound(Type2 type) => null;
  String get name => _name;
  bool isAssignableTo(Type2 type) => this.isSubtypeOf(type) || type.isSubtypeOf(this);
  bool isMoreSpecificThan(Type2 type) => false;
  bool isSupertypeOf(Type2 type) => type.isSubtypeOf(this);
  String toString() => _name == null ? "<unnamed type>" : "type ${_name}";
}
/**
 * Instances of the class {@code TypeVariableTypeImpl} defines the behavior of objects representing
 * the type introduced by a type variable.
 */
class TypeVariableTypeImpl extends TypeImpl implements TypeVariableType {
  /**
   * Return an array containing the type variable types defined by the given array of type variable
   * elements.
   * @param typeVariables the type variable elements defining the type variable types to be returned
   * @return the type variable types defined by the type variable elements
   */
  static List<TypeVariableType> getTypes(List<TypeVariableElement> typeVariables) {
    int count = typeVariables.length;
    List<TypeVariableType> types = new List<TypeVariableType>.fixedLength(count);
    for (int i = 0; i < count; i++) {
      types[i] = typeVariables[i].type;
    }
    return types;
  }
  /**
   * Initialize a newly created type variable to be declared by the given element and to have the
   * given name.
   * @param element the element representing the declaration of the type variable
   */
  TypeVariableTypeImpl(TypeVariableElement element) : super(element, element.name) {
  }
  bool operator ==(Object object) => object is TypeVariableTypeImpl && element == (object as TypeVariableTypeImpl).element;
  TypeVariableElement get element => super.element as TypeVariableElement;
  int get hashCode => element.hashCode;
  bool isMoreSpecificThan(Type2 type) {
    Type2 upperBound = element.bound;
    return type == upperBound;
  }
  bool isSubtypeOf(Type2 type) => true;
  Type2 substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes) {
    int length7 = parameterTypes.length;
    for (int i = 0; i < length7; i++) {
      if (parameterTypes[i] == this) {
        return argumentTypes[i];
      }
    }
    return this;
  }
}
/**
 * The unique instance of the class {@code VoidTypeImpl} implements the type {@code void}.
 */
class VoidTypeImpl extends TypeImpl implements VoidType {
  /**
   * The unique instance of this class.
   */
  static VoidTypeImpl _INSTANCE = new VoidTypeImpl();
  /**
   * Return the unique instance of this class.
   * @return the unique instance of this class
   */
  static VoidTypeImpl get instance => _INSTANCE;
  /**
   * Prevent the creation of instances of this class.
   */
  VoidTypeImpl() : super(null, Keyword.VOID.syntax) {
  }
  bool operator ==(Object object) => object == this;
  bool isSubtypeOf(Type2 type) => type == this || type == DynamicTypeImpl.instance;
  VoidTypeImpl substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes) => this;
}
/**
 * The interface {@code FunctionType} defines the behavior common to objects representing the type
 * of a function, method, constructor, getter, or setter. Function types come in three variations:
 * <ol>
 * <li>The types of functions that only have required parameters. These have the general form
 * <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>) &rarr; T</i>.</li>
 * <li>The types of functions with optional positional parameters. These have the general form
 * <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>, [T<sub>n+1</sub>, &hellip;, T<sub>n+k</sub>]) &rarr;
 * T</i>.</li>
 * <li>The types of functions with named positional parameters. These have the general form
 * <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>, {T<sub>x1</sub> x1, &hellip;, T<sub>xk</sub> xk})
 * &rarr; T</i>.</li>
 * </ol>
 */
abstract class FunctionType implements Type2 {
  /**
   * Return a map from the names of named parameters to the types of the named parameters of this
   * type of function. The entries in the map will be iterated in the same order as the order in
   * which the named parameters were defined. If there were no named parameters declared then the
   * map will be empty.
   * @return a map from the name to the types of the named parameters of this type of function
   */
  Map<String, Type2> get namedParameterTypes;
  /**
   * Return an array containing the types of the normal parameters of this type of function. The
   * parameter types are in the same order as they appear in the declaration of the function.
   * @return the types of the normal parameters of this type of function
   */
  List<Type2> get normalParameterTypes;
  /**
   * Return a map from the names of optional (positional) parameters to the types of the optional
   * parameters of this type of function. The entries in the map will be iterated in the same order
   * as the order in which the optional parameters were defined. If there were no optional
   * parameters declared then the map will be empty.
   * @return a map from the name to the types of the optional parameters of this type of function
   */
  List<Type2> get optionalParameterTypes;
  /**
   * Return the type of object returned by this type of function.
   * @return the type of object returned by this type of function
   */
  Type2 get returnType;
  /**
   * Return an array containing the actual types of the type arguments. If this type's element does
   * not have type parameters, then the array should be empty (although it is possible for type
   * arguments to be erroneously declared). If the element has type parameters and the actual type
   * does not explicitly include argument values, then the type "dynamic" will be automatically
   * provided.
   * @return the actual types of the type arguments
   */
  List<Type2> get typeArguments;
  /**
   * Return {@code true} if this type is a subtype of the given type.
   * <p>
   * A function type <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>) &rarr; T</i> is a subtype of the
   * function type <i>(S<sub>1</sub>, &hellip;, S<sub>n</sub>) &rarr; S</i>, if all of the following
   * conditions are met:
   * <ul>
   * <li>Either
   * <ul>
   * <li><i>S</i> is void, or</li>
   * <li><i>T &hArr; S</i>.</li>
   * </ul>
   * </li>
   * <li>For all <i>i</i>, 1 <= <i>i</i> <= <i>n</i>, <i>T<sub>i</sub> &hArr; S<sub>i</sub></i>.</li>
   * </ul>
   * A function type <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>, [T<sub>n+1</sub>, &hellip;,
   * T<sub>n+k</sub>]) &rarr; T</i> is a subtype of the function type <i>(S<sub>1</sub>, &hellip;,
   * S<sub>n</sub>, [S<sub>n+1</sub>, &hellip;, S<sub>n+m</sub>]) &rarr; S</i>, if all of the
   * following conditions are met:
   * <ul>
   * <li>Either
   * <ul>
   * <li><i>S</i> is void, or</li>
   * <li><i>T &hArr; S</i>.</li>
   * </ul>
   * </li>
   * <li><i>k</i> >= <i>m</i> and for all <i>i</i>, 1 <= <i>i</i> <= <i>n+m</i>, <i>T<sub>i</sub>
   * &hArr; S<sub>i</sub></i>.</li>
   * </ul>
   * A function type <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>, {T<sub>x1</sub> x1, &hellip;,
   * T<sub>xk</sub> xk}) &rarr; T</i> is a subtype of the function type <i>(S<sub>1</sub>, &hellip;,
   * S<sub>n</sub>, {S<sub>y1</sub> y1, &hellip;, S<sub>ym</sub> ym}) &rarr; S</i>, if all of the
   * following conditions are met:
   * <ul>
   * <li>Either
   * <ul>
   * <li><i>S</i> is void,</li>
   * <li>or <i>T &hArr; S</i>.</li>
   * </ul>
   * </li>
   * <li>For all <i>i</i>, 1 <= <i>i</i> <= <i>n</i>, <i>T<sub>i</sub> &hArr; S<sub>i</sub></i>.</li>
   * <li><i>k</i> >= <i>m</i> and <i>y<sub>i</sub></i> in <i>{x<sub>1</sub>, &hellip;,
   * x<sub>k</sub>}</i>, 1 <= <i>i</i> <= <i>m</i>.</li>
   * <li>For all <i>y<sub>i</sub></i> in <i>{y<sub>1</sub>, &hellip;, y<sub>m</sub>}</i>,
   * <i>y<sub>i</sub> = x<sub>j</sub> => Tj &hArr; Si</i>.</li>
   * </ul>
   * In addition, the following subtype rules apply:
   * <p>
   * <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>, []) &rarr; T <: (T<sub>1</sub>, &hellip;,
   * T<sub>n</sub>) &rarr; T.</i><br>
   * <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>) &rarr; T <: (T<sub>1</sub>, &hellip;,
   * T<sub>n</sub>, {}) &rarr; T.</i><br>
   * <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>, {}) &rarr; T <: (T<sub>1</sub>, &hellip;,
   * T<sub>n</sub>) &rarr; T.</i><br>
   * <i>(T<sub>1</sub>, &hellip;, T<sub>n</sub>) &rarr; T <: (T<sub>1</sub>, &hellip;,
   * T<sub>n</sub>, []) &rarr; T.</i>
   * <p>
   * All functions implement the class {@code Function}. However not all function types are a
   * subtype of {@code Function}. If an interface type <i>I</i> includes a method named{@code call()}, and the type of {@code call()} is the function type <i>F</i>, then <i>I</i> is
   * considered to be a subtype of <i>F</i>.
   * @param type the type being compared with this type
   * @return {@code true} if this type is a subtype of the given type
   */
  bool isSubtypeOf(Type2 type);
  /**
   * Return the type resulting from substituting the given arguments for this type's parameters.
   * This is fully equivalent to {@code substitute(argumentTypes, getTypeArguments())}.
   * @param argumentTypes the actual type arguments being substituted for the type parameters
   * @return the result of performing the substitution
   */
  FunctionType substitute4(List<Type2> argumentTypes);
  FunctionType substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes);
}
/**
 * The interface {@code InterfaceType} defines the behavior common to objects representing the type
 * introduced by either a class or an interface, or a reference to such a type.
 */
abstract class InterfaceType implements Type2 {
  ClassElement get element;
  /**
   * Return the least upper bound of this type and the given type, or {@code null} if there is no
   * least upper bound.
   * <p>
   * Given two interfaces <i>I</i> and <i>J</i>, let <i>S<sub>I</sub></i> be the set of
   * superinterfaces of <i>I<i>, let <i>S<sub>J</sub></i> be the set of superinterfaces of <i>J</i>
   * and let <i>S = (I &cup; S<sub>I</sub>) &cap; (J &cup; S<sub>J</sub>)</i>. Furthermore, we
   * define <i>S<sub>n</sub> = {T | T &isin; S &and; depth(T) = n}</i> for any finite <i>n</i>,
   * where <i>depth(T)</i> is the number of steps in the longest inheritance path from <i>T</i> to
   * <i>Object</i>. Let <i>q</i> be the largest number such that <i>S<sub>q</sub></i> has
   * cardinality one. The least upper bound of <i>I</i> and <i>J</i> is the sole element of
   * <i>S<sub>q</sub></i>.
   * @param type the other type used to compute the least upper bound
   * @return the least upper bound of this type and the given type
   */
  Type2 getLeastUpperBound(Type2 type);
  /**
   * Return the type representing the superclass of this type. Note that this is <b>not</b>, in
   * general, equivalent to getting the superclass from this type's element because the type
   * returned by this method will have had it's type parameters replaced.
   * @return the superclass of this type
   */
  Type2 get superclass;
  /**
   * Return an array containing the actual types of the type arguments. If this type's element does
   * not have type parameters, then the array should be empty (although it is possible for type
   * arguments to be erroneously declared). If the element has type parameters and the actual type
   * does not explicitly include argument values, then the type "dynamic" will be automatically
   * provided.
   * @return the actual types of the type arguments
   */
  List<Type2> get typeArguments;
  /**
   * Return {@code true} if this type is a direct supertype of the given type. The implicit
   * interface of class <i>I</i> is a direct supertype of the implicit interface of class <i>J</i>
   * iff:
   * <ul>
   * <li><i>I</i> is Object, and <i>J</i> has no extends clause.</li>
   * <li><i>I</i> is listed in the extends clause of <i>J</i>.</li>
   * <li><i>I</i> is listed in the implements clause of <i>J</i>.</li>
   * <li><i>I</i> is listed in the with clause of <i>J</i>.</li>
   * <li><i>J</i> is a mixin application of the mixin of <i>I</i>.</li>
   * </ul>
   * @param type the type being compared with this type
   * @return {@code true} if this type is a direct supertype of the given type
   */
  bool isDirectSupertypeOf(InterfaceType type);
  /**
   * Return {@code true} if this type is more specific than the given type. An interface type
   * <i>T</i> is more specific than an interface type <i>S</i>, written <i>T &laquo; S</i>, if one
   * of the following conditions is met:
   * <ul>
   * <li>Reflexivity: <i>T</i> is <i>S</i>.
   * <li><i>T</i> is bottom.
   * <li><i>S</i> is dynamic.
   * <li>Direct supertype: <i>S</i> is a direct supertype of <i>T</i>.
   * <li><i>T</i> is a type variable and <i>S</i> is the upper bound of <i>T</i>.
   * <li>Covariance: <i>T</i> is of the form <i>I&lt;T<sub>1</sub>, &hellip;, T<sub>n</sub>&gt;</i>
   * and S</i> is of the form <i>I&lt;S<sub>1</sub>, &hellip;, S<sub>n</sub>&gt;</i> and
   * <i>T<sub>i</sub> &laquo; S<sub>i</sub></i>, <i>1 <= i <= n</i>.
   * <li>Transitivity: <i>T &laquo; U</i> and <i>U &laquo; S</i>.
   * </ul>
   * @param type the type being compared with this type
   * @return {@code true} if this type is more specific than the given type
   */
  bool isMoreSpecificThan(Type2 type);
  /**
   * Return {@code true} if this type is a subtype of the given type. An interface type <i>T</i> is
   * a subtype of an interface type <i>S</i>, written <i>T</i> <: <i>S</i>, iff
   * <i>[bottom/dynamic]T</i> &laquo; <i>S</i> (<i>T</i> is more specific than <i>S</i>). If an
   * interface type <i>I</i> includes a method named <i>call()</i>, and the type of <i>call()</i> is
   * the function type <i>F</i>, then <i>I</i> is considered to be a subtype of <i>F</i>.
   * @param type the type being compared with this type
   * @return {@code true} if this type is a subtype of the given type
   */
  bool isSubtypeOf(Type2 type);
  /**
   * Return the type resulting from substituting the given arguments for this type's parameters.
   * This is fully equivalent to {@code substitute(argumentTypes, getTypeArguments())}.
   * @param argumentTypes the actual type arguments being substituted for the type parameters
   * @return the result of performing the substitution
   */
  InterfaceType substitute5(List<Type2> argumentTypes);
  InterfaceType substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes);
}
/**
 * The interface {@code Type} defines the behavior of objects representing the declared type of
 * elements in the element model.
 */
abstract class Type2 {
  /**
   * Return the element representing the declaration of this type, or {@code null} if the type has
   * not, or cannot, be associated with an element. The former case will occur if the element model
   * is not yet complete; the latter case will occur if this object represents an undefined type.
   * @return the element representing the declaration of this type
   */
  Element get element;
  /**
   * Return the least upper bound of this type and the given type, or {@code null} if there is no
   * least upper bound.
   * @param type the other type used to compute the least upper bound
   * @return the least upper bound of this type and the given type
   */
  Type2 getLeastUpperBound(Type2 type);
  /**
   * Return the name of this type, or {@code null} if the type does not have a name, such as when
   * the type represents the type of an unnamed function.
   * @return the name of this type
   */
  String get name;
  /**
   * Return {@code true} if this type is assignable to the given type. A type <i>T</i> may be
   * assigned to a type <i>S</i>, written <i>T</i> &hArr; <i>S</i>, iff either <i>T</i> <: <i>S</i>
   * or <i>S</i> <: <i>T</i>.
   * @param type the type being compared with this type
   * @return {@code true} if this type is assignable to the given type
   */
  bool isAssignableTo(Type2 type);
  /**
   * Return {@code true} if this type is more specific than the given type.
   * @param type the type being compared with this type
   * @return {@code true} if this type is more specific than the given type
   */
  bool isMoreSpecificThan(Type2 type);
  /**
   * Return {@code true} if this type is a subtype of the given type.
   * @param type the type being compared with this type
   * @return {@code true} if this type is a subtype of the given type
   */
  bool isSubtypeOf(Type2 type);
  /**
   * Return {@code true} if this type is a supertype of the given type. A type <i>S</i> is a
   * supertype of <i>T</i>, written <i>S</i> :> <i>T</i>, iff <i>T</i> is a subtype of <i>S</i>.
   * @param type the type being compared with this type
   * @return {@code true} if this type is a supertype of the given type
   */
  bool isSupertypeOf(Type2 type);
  /**
   * Return the type resulting from substituting the given arguments for the given parameters in
   * this type. The specification defines this operation in section 2: <blockquote> The notation
   * <i>[x<sub>1</sub>, ..., x<sub>n</sub>/y<sub>1</sub>, ..., y<sub>n</sub>]E</i> denotes a copy of
   * <i>E</i> in which all occurrences of <i>y<sub>i</sub>, 1 <= i <= n</i> have been replaced with
   * <i>x<sub>i</sub></i>.</blockquote> Note that, contrary to the specification, this method will
   * not create a copy of this type if no substitutions were required, but will return this type
   * directly.
   * @param argumentTypes the actual type arguments being substituted for the parameters
   * @param parameterTypes the parameters to be replaced
   * @return the result of performing the substitution
   */
  Type2 substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes);
}
/**
 * The interface {@code TypeVariableType} defines the behavior of objects representing the type
 * introduced by a type variable.
 */
abstract class TypeVariableType implements Type2 {
  TypeVariableElement get element;
}
/**
 * The interface {@code VoidType} defines the behavior of the unique object representing the type{@code void}.
 */
abstract class VoidType implements Type2 {
  VoidType substitute2(List<Type2> argumentTypes, List<Type2> parameterTypes);
}