### A Pluto.jl notebook ###
# v0.20.24

#> risky_file_source = "https://github.com/mitmath/computational-thinking/blob/Fall24/src/homework/hw0.jl?raw=true"

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    #! format: off
    return quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
    #! format: on
end

# ╔═╡ d6ee91ea-e750-11ea-1260-31ebf3ec6a9b
using Compose

# ╔═╡ 5acd58e0-e856-11ea-2d3d-8329889fe16f
using PlutoUI

# ╔═╡ fafae38e-e852-11ea-1208-732b4744e4c2
md"_Homework 0, version 4_"

# ╔═╡ a2181260-e6cd-11ea-2a69-8d9d31d1ef0e
md"""
# Homework 0: Getting up and running

First of all, **_welcome to the course!_** We are excited to teach you about real world applications of scientific computing, using the same tools that we work with ourselves.

This first homework is a little mic-check. We'd like all MIT students to **submit this zeroth homework assignment**. It will not affect your grade, but it will help us get everything running smoothly when the course starts. If you're stuck or don't have much time, just fill in your name and ID and submit 🙂
"""

# ╔═╡ 31a8fbf8-e6ce-11ea-2c66-4b4d02b41995
md"""## Homework Logistics
Homeworks are in the form of [Pluto notebooks](https://plutojl.org). Your must complete them and submit them on Canvas (if you are an MIT student.). If you are not an MIT student, we encourage you to [join Discord](https://discord.gg/Z5qnVf8) and find someone to cross-grade.

HW0 is for you to get your system set up correctly and to test our grading software. You must submit it but it will not count towards your grade.
"""

# ╔═╡ f9d7250a-706f-11eb-104d-3f07c59f7174
md"## Requirements of this HW0

- Install Julia and set up Pluto    
- Do the required Exercise 0.

That’s it, but if you like you can do the _OPTIONAL_ exercises that follow."

# ╔═╡ 430a260e-6cbb-11eb-34af-31366543c9dc
md"""# Installation
Before being able to run this notebook successfully locally, you will need to [set up Julia and Pluto.](/Spring21/installation/)

One you have Julia and Pluto installed, you can click the button at the top right of this page and follow the instructions to edit this notebook locally and submit.
"""

# ╔═╡ a05d2bc8-7024-11eb-08cb-196543bbb8fd
md"## (Required) Exercise 0 - _Making a basic function_

Computing the square of a number is easy -- you just multiply it with itself.

##### Algorithm:

Given: $x$

Output: $x^2$

1. Multiply `x` by `x`"

# ╔═╡ e02f7ea6-7024-11eb-3672-fd59a6cff79b
function basic_square(x)
	return 1 # this is wrong, write your code here!
end

# ╔═╡ 6acef56c-7025-11eb-2524-819c30a75d39
let
	result = basic_square(5)
	if !(result isa Number)
		md"""
!!! warning "Not a number"
    `basic_square` did not return a number. Did you forget to write `return`?
		"""
	elseif abs(result - 5*5) < 0.01
		md"""
!!! correct
    Well done!
		"""
	else
		md"""
!!! warning "Incorrect"
    Keep working on it!
		"""
	end
end

# ╔═╡ 348cea34-7025-11eb-3def-41bbc16c7512
md"That's all that's required for this week. Please submit the notebook. We just wanted to make sure that you're up and running.

If you want to explore further, we have included a few optional exercises below."

# ╔═╡ 339c2d5c-e6ce-11ea-32f9-714b3628909c
md"## (Optional) Exercise 1 - _Square root by Newton's method_

Computing the square of a number is easy -- you already did it.

But how does one compute the square root of a number?

##### Algorithm:

Given: $x$

Output: $\sqrt{x}$

1. Take a guess `a`
1. Divide `x` by `a`
1. Set a = the average of `x/a` and `a`. (The square root must be between these two numbers. Why?)
1. Repeat until `x/a` is roughly equal to `a`. Return `a` as the square root.

In general, you will never get to the point where `x/a` is _exactly_ equal to `a`. So if our algorithm keeps going until `x/a == a`, then it will get stuck.

So instead, the algorithm takes a parameter `error_margin`, which is used to decide when `x/a` and `a` are close enough to halt.
"

# ╔═╡ 56866718-e6ce-11ea-0804-d108af4e5653
md"### Exercise 1.1

Step 3 in the algorithm sets the new guess to be the average of `x/a` and the old guess `a`.

This is because the square root must be between the numbers `x/a` and `a`. Why?
"

# ╔═╡ bccf0e88-e754-11ea-3ab8-0170c2d44628
ex_1_1 = md"""
your answer here
""" 

# you might need to wait until all other cells in this notebook have completed running. 
# scroll down the page to see what's up

# ╔═╡ e7abd366-e7a6-11ea-30d7-1b6194614d0a
if !(@isdefined ex_1_1)
	md"""Do not change the name of the variable - write you answer as `ex_1_1 = "..."`"""
end

# ╔═╡ d62f223c-e754-11ea-2470-e72a605a9d7e
md"### Exercise 1.2

Write a function newton_sqrt(x) which implements the above algorithm."

# ╔═╡ 4896bf0c-e754-11ea-19dc-1380bb356ab6
function newton_sqrt(x, error_margin=0.01, a=x / 2) # a=x/2 is the default value of `a`
	return x # this is wrong, write your code here!
end

# ╔═╡ 7a01a508-e78a-11ea-11da-999d38785348
newton_sqrt(2)

# ╔═╡ 682db9f8-e7b1-11ea-3949-6b683ca8b47b
let
	result = newton_sqrt(2, 0.01)
	if !(result isa Number)
		md"""
!!! warning "Not a number"
    `newton_sqrt` did not return a number. Did you forget to write `return`?
		"""
	elseif abs(result - sqrt(2)) < 0.01
		md"""
!!! correct
    Well done!
		"""
	else
		md"""
!!! warning "Incorrect"
    Keep working on it!
		"""
	end
end

# ╔═╡ 088cc652-e7a8-11ea-0ca7-f744f6f3afdd
md"""
!!! hint
    `abs(r - s)` is the distance between `r` and `s`
"""

# ╔═╡ c18dce7a-e7a7-11ea-0a1a-f944d46754e5
md"""
!!! hint
    If you're stuck, feel free to cheat, this is homework 0 after all 🙃

    Julia has a function called `sqrt`
"""

# ╔═╡ 5e24d95c-e6ce-11ea-24be-bb19e1e14657
md"## (Optional) Exercise 2 - _Sierpinksi's triangle_

Sierpinski's triangle is defined _recursively_:

- Sierpinski's triangle of complexity N is a figure in the form of a triangle which is made of 3 triangular figures which are themselves Sierpinski's triangles of complexity N-1.

- A Sierpinski's triangle of complexity 0 is a simple solid equilateral triangle
"

# ╔═╡ 6b8883f6-e7b3-11ea-155e-6f62117e123b
md"To draw Sierpinski's triangle, we are going to use an external package, [_Compose.jl_](https://giovineitalia.github.io/Compose.jl/latest/tutorial). Let's import it!

A package contains a coherent set of functionality that you can often use a black box according to its specification. There are [lots of Julia packages](https://juliahub.com/ui/Home).
"

# ╔═╡ dbc4da6a-e7b4-11ea-3b70-6f2abfcab992
md"Just like the definition above, our `sierpinksi` function is _recursive_: it calls itself."

# ╔═╡ 02b9c9d6-e752-11ea-0f32-91b7b6481684
complexity = 3

# ╔═╡ 1eb79812-e7b5-11ea-1c10-63b24803dd8a
if complexity == 3 
	md"""
Try changing the value of **`complexity` to `5`** in the cell above. 

Hit `Shift+Enter` to affect the change.
	"""
else
	md"""
**Great!** As you can see, all the cells in this notebook are linked together by the variables they define and use. Just like a spreadsheet!
	"""
end

# ╔═╡ d7e8202c-e7b5-11ea-30d3-adcd6867d5f5
md"### Exercise 2.1

As you can see, the total area covered by triangles is lower when the complexity is higher."

# ╔═╡ f22222b4-e7b5-11ea-0ea0-8fa368d2a014
md"""
Can you write a function that computes the _area of `sierpinski(n)`_, as a fraction of the area of `sierpinski(0)`?

So:
```
area_sierpinski(0) = 1.0
area_sierpinski(1) = 0.??
...
```
"""

# ╔═╡ ca8d2f72-e7b6-11ea-1893-f1e6d0a20dc7
function area_sierpinski(n)
	return 1.0
end

# ╔═╡ 71c78614-e7bc-11ea-0959-c7a91a10d481
if area_sierpinski(0) == 1.0 && area_sierpinski(1) == 3 / 4
	md"""
!!! correct
    Well done!
	"""
else
	md"""
!!! warning "Incorrect"
    Keep working on it!
	"""
end

# ╔═╡ c21096c0-e856-11ea-3dc5-a5b0cbf29335
md"**Let's try it out below:**"

# ╔═╡ 52533e00-e856-11ea-08a7-25e556fb1127
md"Complexity = $(@bind n Slider(0:6, show_value=true))"

# ╔═╡ c1ecad86-e7bc-11ea-1201-23ee380181a1
md"""
!!! hint
    Can you write `area_sierpinksi(n)` as a function of `area_sierpinski(n-1)`?
"""

# ╔═╡ a60a492a-e7bc-11ea-0f0b-75d81ce46a01
md"That's it for now, see you next week!"

# ╔═╡ dfdeab34-e751-11ea-0f90-2fa9bbdccb1e
triangle() = compose(context(), polygon([(1, 1), (0, 1), (1 / 2, 0)]))

# ╔═╡ b923d394-e750-11ea-1971-595e09ab35b5
# It does not matter which order you define the building blocks (functions) of the
# program in. The best way to organize code is the one that promotes understanding.

function place_in_3_corners(t)
	# Uses the Compose library to place 3 copies of t
	# in the 3 corners of a triangle.
	# treat this function as a black box,
	# or learn how it works from the Compose documentation here https://giovineitalia.github.io/Compose.jl/latest/tutorial/#Compose-is-declarative-1
	compose(context(),
			(context(1 / 4,   0, 1 / 2, 1 / 2), t),
			(context(0, 1 / 2, 1 / 2, 1 / 2), t),
			(context(1 / 2, 1 / 2, 1 / 2, 1 / 2), t))
end

# ╔═╡ e2848b9a-e703-11ea-24f9-b9131434a84b
function sierpinski(n)
	if n == 0
		triangle()
	else
		t = sierpinski(n - 1) # recursively construct a smaller sierpinski's triangle
		place_in_3_corners(t) # place it in the 3 corners of a triangle
	end
end

# ╔═╡ 9664ac52-e750-11ea-171c-e7d57741a68c
sierpinski(complexity)

# ╔═╡ df0a4068-e7b2-11ea-2475-81b237d492b3
sierpinski.(0:6)

# ╔═╡ 147ed7b0-e856-11ea-0d0e-7ff0d527e352
md"""

Sierpinski's triangle of complexity $(n)

 $(sierpinski(n))

has area **$(area_sierpinski(n))**

"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Compose = "a81c6b42-2e10-5240-aca2-a61377ecd94b"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
Compose = "~0.9.5"
PlutoUI = "~0.7.59"
"""

# ╔═╡ Cell order:
# ╟─fafae38e-e852-11ea-1208-732b4744e4c2
# ╟─a2181260-e6cd-11ea-2a69-8d9d31d1ef0e
# ╟─31a8fbf8-e6ce-11ea-2c66-4b4d02b41995
# ╟─f9d7250a-706f-11eb-104d-3f07c59f7174
# ╟─430a260e-6cbb-11eb-34af-31366543c9dc
# ╟─a05d2bc8-7024-11eb-08cb-196543bbb8fd
# ╠═e02f7ea6-7024-11eb-3672-fd59a6cff79b
# ╟─6acef56c-7025-11eb-2524-819c30a75d39
# ╟─348cea34-7025-11eb-3def-41bbc16c7512
# ╟─339c2d5c-e6ce-11ea-32f9-714b3628909c
# ╟─56866718-e6ce-11ea-0804-d108af4e5653
# ╠═bccf0e88-e754-11ea-3ab8-0170c2d44628
# ╟─e7abd366-e7a6-11ea-30d7-1b6194614d0a
# ╟─d62f223c-e754-11ea-2470-e72a605a9d7e
# ╠═4896bf0c-e754-11ea-19dc-1380bb356ab6
# ╠═7a01a508-e78a-11ea-11da-999d38785348
# ╟─682db9f8-e7b1-11ea-3949-6b683ca8b47b
# ╟─088cc652-e7a8-11ea-0ca7-f744f6f3afdd
# ╟─c18dce7a-e7a7-11ea-0a1a-f944d46754e5
# ╟─5e24d95c-e6ce-11ea-24be-bb19e1e14657
# ╟─6b8883f6-e7b3-11ea-155e-6f62117e123b
# ╠═d6ee91ea-e750-11ea-1260-31ebf3ec6a9b
# ╠═5acd58e0-e856-11ea-2d3d-8329889fe16f
# ╟─dbc4da6a-e7b4-11ea-3b70-6f2abfcab992
# ╠═e2848b9a-e703-11ea-24f9-b9131434a84b
# ╠═9664ac52-e750-11ea-171c-e7d57741a68c
# ╠═02b9c9d6-e752-11ea-0f32-91b7b6481684
# ╟─1eb79812-e7b5-11ea-1c10-63b24803dd8a
# ╟─d7e8202c-e7b5-11ea-30d3-adcd6867d5f5
# ╠═df0a4068-e7b2-11ea-2475-81b237d492b3
# ╟─f22222b4-e7b5-11ea-0ea0-8fa368d2a014
# ╠═ca8d2f72-e7b6-11ea-1893-f1e6d0a20dc7
# ╟─71c78614-e7bc-11ea-0959-c7a91a10d481
# ╟─c21096c0-e856-11ea-3dc5-a5b0cbf29335
# ╟─52533e00-e856-11ea-08a7-25e556fb1127
# ╟─147ed7b0-e856-11ea-0d0e-7ff0d527e352
# ╟─c1ecad86-e7bc-11ea-1201-23ee380181a1
# ╟─a60a492a-e7bc-11ea-0f0b-75d81ce46a01
# ╟─dfdeab34-e751-11ea-0f90-2fa9bbdccb1e
# ╟─b923d394-e750-11ea-1971-595e09ab35b5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
