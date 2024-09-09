function do_stuff()
    local x = 1
    local y = 2
    return x + y
end


do
    local first_Name = "Madan"
    local last_Name = "Panthi"
    print(first_Name .. " " .. last_Name)       -- String concatenation
end

print(x)
print(do_stuff())

-- Cannot start a variable name with a number
-- local 1x = 10

-- nil
local x = nil
print(x)

-- false/true
local x = false
print(x)

-- number
local x = 10
print(x)

-- string
local x = "Hello"
print(x)
print(#x)  -- length of string

-- table
local x = {"Madan" ,nil ,true ,10}  -- table with 4 elements and table index starts from 1
local y = {1, 2, 3}
local z = {name = "Madan", age = 21}
print(z)
print(type(y))
print(x)

-- function
local x = function() end
print(x)

-- thread
local x = coroutine.create(function() end)
print(x)

-- userdata
local x = io.stdin
print(x)

-- multiline string
local x = [[
    Hello
    World
]]
print(x)

-- multiline comment
--[[
    Hello
    World
]]

-- single line comment
-- Hello World

-- math library
print(math.pi)
print(math.sin(math.pi/2))
print(math.cos(math.pi/2))
print(math.tan(math.pi/4))
print(math.abs(-10))
print(math.ceil(10.5))
print(math.floor(10.5))
print(math.max(10, 20))
print(math.min(10, 20))
print(math.random(1, 10))
print(math.randomseed(os.time()))

-- string library
print(string.byte("Hello", 1))
print(string.char(65))
print(string.find("Hello World", "World"))
print(string.format("Hello %s", "World"))
print(string.len("Hello"))
print(string.lower("Hello"))
print(string.upper("Hello"))
print(string.rep("Hello", 3))
print(string.reverse("Hello"))
print(string.sub("Hello", 1, 2))
print(string.gsub("Hello World", "World", "Madan"))
print(string.match("Hello World", "World"))
print(string.gmatch("Hello World", "World"))

-- table library
local x = {1, 2, 3}
table.insert(x, 4)
table.remove(x, 1)
print(table.concat(x, ","))
print(table.maxn(x))
print(table.sort(x))

-- os library
print(os.time())
print(os.date())
print(os.clock())
print(os.getenv("HOME"))
print(os.exit())

-- io library
local file = io.open("test.txt", "w")
file:write("Hello World")
file:close()

local file = io.open("test.txt", "r")
print(file:read())
file:close()

-- for loop
for i = 1, 10 do
    print(i)
end

--while loop
local i = 1
while i <= 10 do
    print(i)
    i = i + 1
end

-- repeat until loop
local i = 1
repeat
    print(i)
    i = i + 1
until i > 10

-- if else
local x = 10
if x == 10 then
    print("x is 10")
elseif x == 20 then
    print("x is 20")
else
    print("x is not 10 or 20")
end

-- switch case
local x = 10
if x == 10 then
    print("x is 10")
elseif x == 20 then
    print("x is 20")
else
    print("x is not 10 or 20")
end

-- function
function add(x, y)
    return x + y
end

print(add(10, 20))

-- function with multiple return values
function add_sub(x, y)
    return x + y, x - y
end

local sum, sub = add_sub(10, 20)
print(sum, sub)

-- function with variable number of arguments
function add(...)
    local sum = 0
    for i, v in ipairs{...} do
        sum = sum + v
    end
    return sum
end

print(add(1, 2, 3, 4, 5))

-- function with named arguments
function add(x, y)
    return x + y
end

print(add{x = 10, y = 20})

-- function with default arguments
function add(x, y)
    x = x or 0
    y = y or 0
    return x + y
end

print(add(10))




