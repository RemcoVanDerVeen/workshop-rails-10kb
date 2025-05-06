# frozen_string_literal: true

describe 'Monkey Patching' do # rubocop:disable RSpec/DescribeClass
  it 'expands string functionality' do
    expect('a'.add_a_t_to_the_end_of_the_string).to eq('at')

    expect('boo'.deghostify).to eq('yay')
  end

  it 'expands array functionality' do
    expect(
      %w[this is an array].make_secret_code
    ).to eq(['****', '****', '****', '****'])
  end
end
