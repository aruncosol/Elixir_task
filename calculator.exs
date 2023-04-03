defmodule Calculator do
  def start do
    get_input()
  end

  defp get_input do
    {num1, num2} = get_numbers()
    operation = get_operation()

    perform_operation(num1, num2, operation)
  end

  defp get_numbers do
    IO.puts("Enter the 1'st number")
    num1 = IO.gets("") |> String.trim() |> String.to_integer()

    IO.puts("Enter the 2'nd number")
    num2 = IO.gets("") |> String.trim() |> String.to_integer()

    {num1, num2}
  end

  defp get_operation do
    IO.puts("Enter Corresponding number\n(1)Add\n(2)Sub\n(3)Mul\n(4)Div")
    IO.gets("") |> String.trim() |> String.to_integer()
  end

  defp perform_operation(num1, num2, 1) do
    add(num1, num2)
    acknowledgement()
  end

  defp perform_operation(num1, num2, 2) do
    sub(num1, num2)
    acknowledgement()
  end

  defp perform_operation(num1, num2, 3) do
    mul(num1, num2)
    acknowledgement()
  end

  defp perform_operation(num1, num2, 4) do
    division(num1, num2)
    acknowledgement()
  end

  defp perform_operation(_, _, _) do
    IO.puts("Please enter a valid input.")
    get_input()
  end

  defp acknowledgement do
    IO.puts("Are you done? or would you like to do it again (yes/y) or (no/n)")
    confirm = IO.gets("") |> String.trim()

    case confirm do
      "n" ->
        IO.puts("Good bye, Thank you for using this session")

      "y" ->
        IO.puts("Welcome again...")
        get_input()

      _ ->
        acknowledgement()
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
