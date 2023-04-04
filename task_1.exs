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

{result, time_taken} = MyList.map([1, 2, 3], fn x -> x * 2 end)
IO.puts("Result: #{inspect(result)}")
IO.puts("Time taken: #{inspect(time_taken)}")
