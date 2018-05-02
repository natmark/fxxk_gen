require "fxxk_gen/version"

class Brainfuck
    BLOCKS = 10

    def initialize
    end

    def self.bf_mapping
        @bf_operations ||= {nxt: '>', prv: '<', inc: '+', dec: '-', put: '.',  get: ',', opn: '[', cls: ']' }
    end

    def self.default_mapping
        @default_mapping ||= bf_mapping.clone
    end

    def generate(text)
        result = ""
        prev_char_code = 0

        text.chars.each_with_index do |c, i|
            char_code = c.ord
            gap = char_code - prev_char_code

            division = { quotient: gap.abs / BLOCKS, reminder: gap.abs % BLOCKS }

            if division[:quotient] != 0 && i > 0 then
                result += self.class.default_mapping[:prv]
            end

            mark = gap < 0 ? self.class.default_mapping[:dec] : self.class.default_mapping[:inc]
            result += optimize(division, mark)

            prev_char_code  = char_code
        end

        return result
    end

    def optimize(division, mark)
        result = ""

        if division[:quotient] == 0 then
            division[:reminder].times do
                result += mark
            end
            result += self.class.default_mapping[:put]
        else
            BLOCKS.times do
                result += self.class.default_mapping[:inc]
            end
            result += (self.class.default_mapping[:opn] + self.class.default_mapping[:nxt])
            division[:quotient].times do
                result += mark
            end
            result += (self.class.default_mapping[:prv] + self.class.default_mapping[:dec] + self.class.default_mapping[:cls] + self.class.default_mapping[:nxt])
            division[:reminder].times do
                result += mark
            end
            result += self.class.default_mapping[:put]
        end

        return result
    end

    class << self
        Brainfuck.default_mapping.keys.each do |op|
            define_method(op) do |val|
                default_mapping[op] = val
            end
        end
    end
end
