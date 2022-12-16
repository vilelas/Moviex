defmodule OmdbApiTest do
  use ExUnit.Case

  test "testa busca com titulo valido" do
    result = OmdbApi.search("matrix")
    # Verificamos se o resultado não é vazio
    assert result != %{}
  end

  test "testa busca com titulo vazio" do
    result = OmdbApi.search("")
    # Verificamos se o resultado é igual a {:error, "titulo invalido"}
    assert result == {:error, "titulo invalido"}
  end

  test "testa busca com titulo nil" do
    result = OmdbApi.search(nil)
    # Verificamos se o resultado é igual a {:error, "titulo invalido"}
    assert result == {:error, "titulo invalido"}
  end
end
