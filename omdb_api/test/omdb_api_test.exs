defmodule OmdbApiTest do
  use ExUnit.Case
  doctest OmdbApi

  defmodule MoviexTest do
  use ExUnit.Case, async: true

  test "deve retornar erro ao informar titulo nil" do
    t = nil

    resultado = OmdbApi.search(t)
    assert {:error, "titulo nao pode ser nil"} === resultado
  end

  test "deve retornar erro ao informar titulo que não seja string" do
    t = 01010

    resultado = OmdbApi.search(t)
    assert {:error, "titulo deve ser String"} == resultado
  end

  test "deve retornar erro ao informar titulo vazio" do
    t = ""

    resultado = OmdbApi.search(t)
    assert {:error, "titulo nao pode ser vazio"} == resultado
  end

end

end
