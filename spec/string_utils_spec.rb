require 'spec_helper'

describe StringUtils do
  it 'Checa se a frase faz padding de 1 espaço' do
    frase = 'Telefone... Minha casa.'

    expectativa = "\n"\
                  " Telefone... Minha casa. "\
                  "\n"
    expect(StringUtils.new.padding(frase, [1, 1, 1, 1])).to eq expectativa
  end

  it 'Checa espaços maiores que 1' do
    frase = 'Telefone... Minha casa.'

    expectativa = "\n\n"\
                  "  Telefone... Minha casa.  "\
                  "\n\n"
    
    expect(StringUtils.new.padding(frase, [2, 2, 2, 2])).to eq expectativa
  end
  
  it 'Checa espaços diferentes' do
    frase = 'Telefone... Minha casa.'

    expectativa = "\n"\
                  "  Telefone... Minha casa.   "
                  "\n\n"

    expect(StringUtils.new.padding(frase, [1, 2, 3, 2]))
  end

  it 'Checa [] array vazio' do
    frase = 'Telefone... Minha casa.'

    expect(StringUtils.new.padding(frase, [])).to eq frase
  end
end
