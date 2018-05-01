require "fxxk_gen/version"

class Brainfuck
    def initialize
    end

    def self.bf_mapping
        @bf_operations ||= {nxt: '>', prv: '<', inc: '+', dec: '-', put: '.',  get: ',', opn: '[', cls: ']' }
    end

    def self.default_mapping
        @default_mapping ||= bf_mapping.clone
    end

    def generate(src)
        # self.class.bf_mapping[:nxt] // >
        # self.class.bf_mapping.invert[">"] //:nxt
    end

    class << self
      Brainfuck.default_mapping.keys.each do |op|
        define_method(op) do |val|
          default_mapping[op] = val
        end
      end
    end
end
