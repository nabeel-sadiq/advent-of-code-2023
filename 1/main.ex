data = File.read("map.txt")

case data do
  {:ok, content} ->
    lines = String.split(content, "\n")

    # Loop over the array: ["1abc2", "pqr3stu8vwx", "a1b2c3d4e5f", "treb7uchet"]
    Enum.map(lines, fn line ->
      characters_of_line_array = String.graphemes(line)

      # Loop over the letters in the array:
      Enum.map(characters_of_line_array, fn character ->
        
      end)
    end)

  {:error, reason} ->
    IO.puts("Error #{reason}")
end
