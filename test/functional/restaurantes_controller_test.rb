# -*- coding: utf-8 -*-
require 'test_helper'

class RestaurantesControllerTest < ActionController::TestCase
  fixtures :restaurantes

  def testa_procura_restaurante
    get :busca, :nome => "Fazano"
    assert_not_nil assigns(:restaurante)
    assert_equal restaurantes(:fazano).nome, assigns(:restaurante).nome
    assert_redirected_to :action => "show", :id => restaurantes(:fazano).id
  end

  def testa_procura_restaurante_e_nao_encontra
    get :busca, :nome => "Botequim"
    assert_redirected_to :action => "index"
    assert_equal "Restaurante não encontrado", flash[:notice]
  end
end
