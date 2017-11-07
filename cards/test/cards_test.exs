defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "save a deck and load a deck" do
    deck = Cards.create_deck
    Cards.save deck, "test_deck_saved"

    deck_loaded = Cards.load "test_deck_saved"
    assert deck == deck_loaded
  end

end
