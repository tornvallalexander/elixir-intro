
defmodule User do
  defstruct [:name, :active \\ true, :cart \\ [], :purchases \\ []]

  def getHistory(user) do
    %{user | :history => &(user.purchases)}
  end

  def getUsername(user) do
    %{user | :username => &(user.name)}
  end
end

kim = %User{name: "kim"}
kim.getHistory()
kim.getUsername()

IO.puts kim.history()
IO.puts kim.username()
