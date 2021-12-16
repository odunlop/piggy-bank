require 'piggy_bank'

describe PiggyBank do
  it 'lets a user add coins to piggy bank' do
    expect(subject).to respond_to(:add_coins).with(1).argument
  end

  it 'lets a user shake their piggy bank' do
    expect(subject).to respond_to(:shake)
  end

  it "CLINK when there's money inside" do
    subject.add_coins(5)
    expect(subject.shake).to eq "CLINK!"
  end

  it 'does not CLINK when there are no coins inside' do
    expect(subject.shake).to eq "You hear nothing"
  end

  it "lets the user break the piggy bank to see total" do
    subject.add_coins(5)
    expect(subject.break).to eq 5
  end

  it 'resets the value to zero once broken' do
    subject.add_coins(10)
    subject.break
    expect(subject.break).to eq 0
  end
end


