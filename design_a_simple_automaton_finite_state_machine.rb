class Automaton
  def initialize
    @state = 'q1'
  end

  def read_commands(commands)
    commands.each do |cmd|
      case @state
      when 'q1'
        @state = cmd == '1' ? 'q2' : 'q1' 
      when 'q2'
        @state = cmd == '1' ? 'q2' : 'q3'
      when 'q3'
        @state = 'q2'
      end
    end

    @state == 'q2'
  end
end

my_automaton = Automaton.new
p my_automaton.read_commands(['1', '0', '0', '1'])
