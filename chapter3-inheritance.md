# Inheritance

Ruby includes the concept of inheritance, which allows classes to inherit methods from one another. If one class has some functionality, classes that inherit from it can get that functionality automatically.

Inheritance allows multiple subclasses to inherit methods from a single superclass.

### Defining a subclass (is really easy

Ruby uses a less-than ( < ) symbol because the subclass is a subset of the superclass.

override one or more methods in a subclass, you replace the inherited methods from the superclass with methods specific to the subclass.

### How does this work?

If Ruby sees that the requested method is defined on a subclass, it will call that method and stop there.

But if the method’s not found, Ruby will look for it on the superclass, then the superclass’s superclass, and so on, up the chain.

## The “super” keyword

* When you use the super keyword within a method, it makes a call to a method of the same name on the superclass.

* super keyword is like a regular method call: you can pass it arguments, and those arguments will be passed to the superclass’s method.

* super differs from a regular method call: if you leave the arguments off, the superclass method will automatically be called with the same arguments that were passed to the subclass method.

```
The calls super and super() are not the same.

By itself, super calls the overridden method with the same arguments the overriding method received. But super() calls the overridden method with no arguments, even if the overriding method did receive arguments.

```
* The super keyword can be used within a subclass method to call the overridden method of the same name on the superclass.
* When you define a class, Ruby implicitly sets the Object class as the superclass, unless you specify one.
* Almost every Ruby object has instance methods from the Object class, inherited either directly or through another superclass.
* The to_s, methods, instance_variables, and class methods are all inherited from the Object class.





