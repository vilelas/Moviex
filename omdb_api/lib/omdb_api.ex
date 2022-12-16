defmodule OmdbApi do
  # Precisamos definir a URL da API OMDB e a sua chave de acesso,
  # que você pode obter em https://www.omdbapi.com/

  @api_key "SUA CHAVE API"
  @omdb_api_url "http://www.omdbapi.com/"

  # Agora, podemos definir uma função que faz a requisição à API
  # e retorna o resultado em formato JSON
  def fetch(title) do
    # Criamos a URL da requisição adicionando o título do filme e a chave de acesso
    url = "#{@omdb_api_url}?apikey=#{@api_key}&t=#{title}"

    response = HTTPoison.get!(url)
    case response.status_code do
      200 -> Poison.decode!(response.body)
      _ -> %{}
    end
  end

  # Casos abaixo de sucesso e erro
  def search(title) do
    case is_nil(title) || !is_bitstring(title) || String.trim(title) == "" do
      true -> {:error, "titulo invalido"}
      false -> fetch(title)
    end
  end
end
