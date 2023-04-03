defmodule Calculator do
  def get_input do
    num1 = IO.gets("Enter the 1'st number\n") |> String.trim_trailing() |> String.to_integer()
    num2 = IO.gets("Enter the 2'nd number\n") |> String.trim_trailing() |> String.to_integer()
    perform_operation(num1, num2)
  end

  defp perform_operation(num1, num2) do
    operation =
      IO.gets("Enter Corresponding number\n(1)Add\n(2)Sub\n(3)Mul\n(4)Div\n")
      |> String.trim_trailing()
      |> String.to_integer()

    case operation do
      1 ->
        add(num1, num2)
        acknowledgement()

      2 ->
        sub(num1, num2)
        acknowledgement()

      3 ->
        mul(num1, num2)
        acknowledgement()

      4 ->
        division(num1, num2)
        acknowledgement()

      _ ->
        IO.puts("Please enter valid input")
        perform_operation(num1, num2)
    end
  end

  defp acknowledgement do
    confrim =
      IO.gets("Are you done? or would you like to do it again (yes/y) or (no/n)")
      |> String.trim_trailing()

    case confrim do
      "n" ->
        IO.puts("Good bye, Thank you for using this session")

      "y" ->
        IO.puts("Welcome again...")
        get_input()

      _ ->
        IO.puts("Invalid input please enter valid input Yes(/y) or No(/n)")
        acknowledgement()
        nil
    end
  end

  defp add(num1, num2) do
    IO.puts("Ans : #{num1 + num2}")
  end

  defp sub(num1, num2) do
    if num2 > num1 do
      sub(num2, num1)
    else
      IO.puts("Ans : #{num1 - num2}")
    end
  end

  defp mul(num1, num2) do
    IO.puts("Ans : #{num1 * num2}")
  end

  defp division(num1, num2) do
    IO.puts("Ans : #{div(num1, num2)}")
  end
end

# ------------------------------------- #

# defmodule Mymath do
#   def factorial(n) when n <= 0, do: 1
#   def factorial(n) when n > 0, do: n + factorial(n - 1)
# end
