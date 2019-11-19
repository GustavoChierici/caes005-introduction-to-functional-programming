
defmodule Comunicacao do
  def cumprimenta do
    receive do
      {remetente, mensagem} ->
        send remetente, { :ok, "Olá, #{mensagem}" }
    end
  end
end

pid = spawn(Comunicacao, :cumprimenta, [])
send pid, {self(), "Mundo!"}

receive do
  {:ok, mensagem} ->
    IO.puts mensagem
end

receive do
  {:ok, mensagem} ->
    IO.puts mensagem
  after
    1_000 -> "Nada!"  
end
