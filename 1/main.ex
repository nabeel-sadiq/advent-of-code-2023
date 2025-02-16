defmodule Main do
  def mapParser(map, result) do
    # Split the map into lines
    String.split(map, "\n")

    # Loop over the lines
    |> Enum.map(fn line ->
      # Split the line into characters
      String.graphemes(line)
      # Loop over the characters
      |> Enum.map(fn
        character ->
          # Print the character
          num_character = Integer.parse(character)

          case num_character do
            {num, _} ->
              result_with_num = result ++ [num]
              IO.inspect(result_with_num)

            :error ->
              :error
          end
      end)
    end)

  end
end

data = File.read("map.txt")
result = []

case data do
  {:ok, content} ->
    Main.mapParser(content, result)

  {:error, reason} ->
    IO.puts("Error #{reason}")
end
