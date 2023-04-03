defmodule Calculator do
  def start do
    get_input()
  end

  defp get_input do
    IO.gets("Enter the 1'st number\n")
    |> String.trim_trailing()
    |> String.to_integer()
    |> get_second_input()
  end

  defp get_second_input(num1) do
    IO.gets("Enter the 2'nd number\n")
    |> String.trim_trailing()
    |> String.to_integer()
    |> perform_operation(num1)
  end

  defp perform_operation(num1, num2) do
    IO.gets("Enter Corresponding number\n(1)Add\n(2)Sub\n(3)Mul\n(4)Div\n")
    |> String.trim_trailing()
    |> String.to_integer()
    |> get_answer(num1, num2)
  end

  defp get_answer(num1, num2, 1), do: add(num1, num2)
  defp get_answer(num1, num2, 2), do: sub(num1, num2)
  defp get_answer(num1, num2, 3), do: mul(num1, num2)
  defp get_answer(num1, num2, 4), do: division(num1, num2)
  defp get_answer(_, _, _), do: IO.puts("Please enter valid input")
  get_input()

  defp add(num1, num2) do
    IO.puts("Ans : #{num1 + num2}")
    acknowledgement()
  end

  defp sub(num1, num2) do
    IO.puts("Ans : #{num1 - num2}")
    acknowledgement()
  end

  defp mul(num1, num2) do
    IO.puts("Ans : #{num1 * num2}")
    acknowledgement()
  end

  defp division(num1, num2) do
    IO.puts("Ans : #{div(num1, num2)}")
    acknowledgement()
  end

  defp acknowledgement do
    IO.gets("Are you done? or would you like to do it again (yes/y) or (no/n)")
    |> String.trim_trailing()
    |> check_answer()
  end

  defp check_answer("n"), do: IO.puts("Good bye, Thank you for using this session")
  defp check_answer("y"), do: IO.puts("Welcome again...")
  get_input()
  defp check_answer(_), do: IO.puts("Invalid input please enter valid input Yes(/y) or No(/n)")
  acknowledgement()
end
