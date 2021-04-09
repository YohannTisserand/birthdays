require 'birthday_list'

describe Birthday do
  context '#add' do
    it { is_expected.to respond_to(:add).with(2).argument }

    it 'should add a birthday to the list' do
      birthday = Birthday.new
      expect(birthday.add('Yohann', '14 Octobre 1983')).to eq [{ name: 'Yohann', day: '14 Octobre 1983' }]
    end
  end

  context '#track' do
    it { is_expected.to respond_to(:track) }

    it 'should track all the birthday at once' do
      birthday = Birthday.new
      birthday.add('Yohann', '14 Octobre 1983')
      expect{ birthday.track }.to output.to_stdout
    end
  end

  context '#show' do
    it { is_expected.to respond_to(:show) }

    it 'should show a particular birthday' do
      birthday = Birthday.new
      birthday.add('Yohann', '14 Octobre 1983')
      birthday.add('Mogane', '16 Octobre 1983')
      expect{ birthday.show }.to output.to_stdout
    end
  end
end