defmodule Swapper do
  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]), do: raise("Can't swap a list with an odd number of elements")
end

#
defmodule WeatherHistory do
  def location([]), do: []

  def location([[time, 26, temp, rain] | tail]) do
    [[time, 26, temp, rain] | location(tail)]
  end

  def location([_ | tail]), do: location(tail)

  def test_data do
    [
      [1_366_225_622, 26, 15, 0.125],
      [1_366_225_622, 27, 15, 0.45],
      [1_366_225_622, 28, 21, 0.25],
      [1_366_229_222, 26, 19, 0.081],
      [1_366_229_222, 27, 17, 0.468],
      [1_366_229_222, 28, 15, 0.60],
      [1_366_232_822, 26, 22, 0.095],
      [1_366_232_822, 27, 21, 0.05],
      [1_366_232_822, 28, 24, 0.03],
      [1_366_236_422, 26, 17, 0.025]
    ]
  end
end

#

defmodule MyList do
  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]
end

#
defmodule HotelRoom do
  def book(%{name: name, height: height})
      when height > 1.9 do
    IO.puts("Need extra-long bed for #{name}")
  end

  def book(%{name: name, height: height})
      when height < 1.3 do
    IO.puts("Need low shower controls for #{name}")
  end

  def book(person) do
    IO.puts("Need regular bed for #{person.name}")
  end
end

# 1.example
defmodule MyList do
  def map(list, function) do
    start_time = :os.timestamp()
    result = do_map(list, function)
    end_time = :os.timestamp()
    time_taken = :timer.now_diff(end_time, start_time)
    {result, time_taken}
  end

  defp do_map([], _), do: []
  defp do_map([head | tail], function), do: [function.(head) | do_map(tail, function)]
end

{result, time_taken} = MyList.map([1, 2, 3, 3234, 234_234], fn x -> x * 2 end)
IO.puts("Result: #{inspect(result)}")
IO.puts("Time taken: #{inspect(time_taken)}")
