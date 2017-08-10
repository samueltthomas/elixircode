defmodule EC do
  @moduledoc """
  Elixir is a dynamic, functional language designed for building scalable and maintainable applications.
  """

  @doc """
  Hello world.

  ## Examples

      iex> EC.hello_world
      "Hello World"

  """
  def hello_world do
    # <> String Concatenation Operator
    # "#{var}" String Interpolation
    greeting = "Hello"
    IO.puts("#{greeting} "<>"world from Elixir")
  end

  @doc """
    Arithmetic Operations
  """

  def arithmetic do
    a = 250 + 470
    b = a - 20
    a = b * 10
    a / 4
    # div(a,2) # Integer Divison
    # rem(a,3) # Remainder (modulo)
  end

  def typeof(var) do
    cond do
      is_boolean(var) -> "boolean" # true, false
      is_atom(var) -> "atom" # :name
      is_integer(var) -> "integer"
      is_float(var) -> "float"
      is_number(var) -> "number" # 2, 3.14
      is_list(var) -> "list" # a = [1,2,3]
      is_tuple(var) -> "tuple" # {:ok, "hello"}
      is_map(var) -> "map"
      is_function(var) -> "function"
      true -> "undefined"
    end
  end

  @doc """
    Map Operations
  """

  def map_ops do

    # Maps are the “go to” key-value data structure in Elixir

    user = %{
      "name" => "John",
      "age"=>20,
      "address" => %{
        "street" => "ABCD",
        "state" => "EFGH"
      },
      salary: 100000 # When the key in a key-value pair is an atom, the key: value shorthand syntax can be used
    }

    user["address"]["street"]

    user.salary #  map[key] will return nil if map doesn’t contain key, map.key will raise if map doesn’t contain the key :key.
    user[:salary]

    %{"name"=>name} = user # Pattern Matching
    name

  end

  @doc """
    List Operations
  """

  def list_ops do

    # Lists are stored in memory as linked lists

    list = [1,2,3]

    # hd(list)  # Head 1
    # tl(list)  # Tail [2,3]

    # Comprehension - syntactic sugar to loop over an Enumerable
    # list = for l <- list do
        # IO.puts(l)
        # l * 20
    # end


    # list ++ [4,5,6] # List Concatenation
    # list -- [40] # List Substraction

    # Enum.count(list) # Returns the size of the enumerable.

    # Enum.empty?(list) # Determines if the list is empty. Returns true or false
    # Enum.member?(list,20) # Checks if element exists
    # Enum.reverse(list)  # Returns the elements in reverse order.
    # Enum.random(list) # Returns a random element

    # Enum.shuffle(list) # Returns a list with the elements shuffled.


  end

  def tuple_ops do

    # Tuples are ordered collections of elements
    # Tuples store elements contiguously in memory

    tuple = {1, :two, "three"}

    # elem(tuple, 0) # 1 Index is 0 based
    tuple_size(tuple) #3

    tuple = tuple|>Tuple.append(4) # Inserts an element at the end of a tuple.
    tuple = tuple|>Tuple.delete_at(2) # Deletes the element at the given index from tuple

    tuple = tuple|>Tuple.insert_at(2,:three) # Inserts value into tuple at the given index

    tuple|>Tuple.to_list() # Converts a tuple to a list

    #  A common pattern is for functions to return {:ok, value} for successful cases and {:error, reason} for unsuccessful cases eg. FiLe.read

  end


end
