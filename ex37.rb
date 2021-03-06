# Exercise 37: Symbol Review
if  (true || false == true)
    puts "true"
else
    puts "false"
end
# try run these commands in irb prompt

# Keywords
# Keyword	Description	Example
# BEGIN	    Run this block when the script starts.  	BEGIN { puts "hi" }
# END	    Run this block when the script is done.	    END { puts "hi" }
# alias	    Create another name for a function.	        alias X Y
# and	    Logical and, but lower priority than &&.	puts "Hello" and "Goodbye"
# begin	    Start a block, usually for exceptions.  	begin end
# break	    Break out of a loop right now.	            while true; break; end
# case	    Case style conditional, like an if.	        case X; when Y; else; end
# class	    Define a new class.	class X;                end
# def	    Define a new function.	                    def X(); end
# defined?	Is this class/function/etc.                 defined already?	defined? Class == "constant"
# do	    Create a block that maybe takes a parameter.(0..5).each do |x| puts x end
# else	    Else conditional.	                        if X; else; end
# elsif	    Else if conditional	if X; elsif Y; else; end
# end	    Ends blocks, functions, classes, everything.	begin end # many others
# ensure	Run this code whether an exception happens or not.	begin ensure end
# for	    For loop syntax. The .each syntax is preferred.	for X in Y; end
# if	    If conditional.	if X; end
# in	    In part of for-loops.	for X in Y; end
# module	Define a new module.	module X; end
# next	    Skip to the next element of a .each iterator.	(0..5).each {|y| next }
# not	    Logical not. But use ! instead.	not true == false
# or	    Logical or.	puts "Hello" or "Goodbye"
# redo	    Rerun a code block exactly the same.	(0..5).each {|i| redo if i > 2}
# rescue	Run this code if an exception happens.	begin rescue X; end
# retry	    In a rescue clause, says to try the block again.	(0..5).each {|i| retry if i > 2}
# return	Returns a value from a function. Mostly optional.	return X
# self	    The current object, class, or module.	defined? self == "self"
# super	    The parent class of this class.	super
# then	    Can be used with if optionally.	if true then puts "hi" end
# undef	    Remove a function definition from a class.	undef X
# unless	Inverse of if.	unless false then puts "not" end
# until	    Inverse of while, execute block as long as false.	until false; end
# when	    Part of case conditionals.	case X; when Y; else; end
# while	    While loop.	while true; end
# yield	    Pause and transfer control to the code block.	yield

        # self refers to the current class, 
        # which is simply an instance of the class Class. 
        # Defining a method on self creates a class method.
class Post
    def self.print_author
      puts "The author of all posts is : ---"
    end
  end
  
  Post.print_author

        # Another more advanced way to do this is to
        # define a method inside the Class instance itself.
        # This is referred to as the eigenclass or the singleton class
        #  and it uses the self keyword to open a new context 
        #  where the Class instance is held in self.


class Post
    class << self
        def print_author
        puts "The author of all posts is Jimmy"
        end
    end
    end
    
    Post.print_author


    