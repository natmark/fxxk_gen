require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class Ook < Brainfuck
    nxt 'Ook. Ook?'
    prv 'Ook? Ook.'
    inc 'Ook. Ook.'
    dec 'Ook! Ook!'
    put 'Ook! Ook.'
    get 'Ook. Ook!'
    opn 'Ook! Ook?'
    cls 'Ook? Ook!'
end

RSpec.describe FxxkGen do
    context 'customized class' do
        subject { Ook.new }
        it "generate('Hello World') should be 'Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook?O...Ook! Ook!Ook! Ook.Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook.'" do
            expect(subject.generate('Hello World')).to eq("Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook?O...Ook! Ook!Ook! Ook.Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook.")
        end
    end
end
