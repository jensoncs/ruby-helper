## CONVENTIONAL WISDOM

Use all lowercase letters in variable names. Avoid numbers; they’re rarely used. Separate words with underscores.

```
my_name = "jenson"

```
This style is sometimes called “snake case,” because the underscores make the name look like it’s crawling on the ground.

## Everything is an object!

Ruby is an object-oriented language. That means your data has useful methods (fragments of code that you can execute on demand) attached directly to it.

```
"jenson".upcase
"jenson".reverse

```
What’s cool about Ruby, though, is that everything is an object. Even something as simple as a number is an object. That means numbers have useful methods, too.

```
42.even?
-32.abs
```
## Calling a method on an object

 the object you’re calling the method on is known as the method receiver.

```
"jenson".upcase

jenson  - receiver
.       - dot operator
upcase  - method
```

Exercises

```
irb(main):029:0> "jenson".reverse
=> "nosnej"
irb(main):030:0> 42.even?
=> true
irb(main):031:0> 42.odd?
=> false
irb(main):032:0> 42.even?
=> true
irb(main):033:0> -32.abs
=> 32
irb(main):034:0>
irb(main):035:0> 42/6
=> 7
irb(main):036:0> name = "Zaphod"
=> "Zaphod"
irb(main):037:0> name.upcase
=> "ZAPHOD"
irb(main):038:0> "Zaphod".upcase
=> "ZAPHOD"
irb(main):039:0> name.reverse
=> "dohpaZ"
irb(main):040:0> name.upcase.reverse
=> "DOHPAZ"
irb(main):041:0> name.class
=> String
irb(main):042:0> name * 3
=> "ZaphodZaphodZaphod"
irb(main):043:0> 5>4
=> true
irb(main):044:0> number= -32
=> -32
irb(main):045:0> number.abs
=> 32
irb(main):046:0> -32.abs
=> 32
irb(main):047:0> number += 10
=> -22
irb(main):048:0> rand(25)
=> 17
irb(main):049:0> number.class
=> Integer
irb(main):050:0> rand(25)
=> 2
irb(main):051:0> rand(25)
=> 19
irb(main):052:0> rand(25)
=> 13
irb(main):053:0>
```

