defmodule EnumReduce do
  import Person

  # returns a list of Person
  # entries is a list of key/value pairs
  # entries = [%{:name => "jabba", :age => 1000}, %{:name => "luke", :age => 30}]
  def create_person_list(entries \\ []) do
    Enum.reduce(
      entries,
      [],
      fn entry, acc ->
        p = Person.new(entry.name, entry.age)
        acc = [p | acc]
      end
    )
  end
end
