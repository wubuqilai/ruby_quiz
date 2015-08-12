module  Quiz
  module  Solitaire
      @keystream = {}

      init = (1..52).to_a << 'A' << 'B'

      def init.move(t , depth)
        a = index(t)
        t_pos = (a + depth) % size
        t_pos += 1 if (a + depth) / size > 0
        delete_at(a)
        insert(t_pos,t)
        self
      end

      while @keystream.size < 20
        #Move the A joker down one card
        init.move('A', 1).move('B', 2)
        before = init.find_index{|a| a == 'A'|| a == 'B'}
        init.concat(init[0..before-1]).slice!(0, before) if before > 0
        bottom = init.last
        init.slice!(init.size - 1)
        (init.concat(init[0..bottom-1]) << bottom).slice!(0,bottom)
        p init
        res = init[init.first]
        puts ("A".ord + res - 1).chr if res != 'A' && res != 'B'
        @keystream[("A".ord + res - 1).chr] = res if res != 'A' && res != 'B'
      end

      p @keystream
  end
end