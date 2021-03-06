from Line import *
from RegisterGroup import *

class Stimulator:
    def __init__(self, instructions, max_cycle = -1, forwarding = False):
        self.instructions = instructions
        self.register_group = RegisterGroup(forwarding)
        self.max_cycle = max_cycle
        self.cycle = 0
        self.forwarding = forwarding
        self.runtime = []
        self.program_counter = 0
        self.end = False

    
    def add_instruction(self, index = -1):
        inst = None
        if index != -1:
            inst = self.instructions.get_instruction_by_index(
                   index
            )
        else:
            inst = self.instructions.get_instruction_by_index(
                    self.program_counter
            )

        if inst != None:
            self.runtime.append(Line(inst, self.cycle, self.max_cycle))
            self.program_counter += 1
            self.end = False
        else:
            self.end = True

    def run_one_cycle(self):
        # First, we need to insert one more from the program counter.
        self.add_instruction()

        ls_cyc = len(DEFAULT_STAGE) # First one has no limit
        i = 0
        while i < len(self.runtime): # Since we need to change the list, we cannot use for i in self.runtime
            # register_group, last_cycle, current_cycle
            res = self.runtime[i].run_one_stage(self.register_group, ls_cyc, self.cycle)
            ls_cyc = self.runtime[i].get_cycle()
            if res == True:
                # Control Hazard
                self.register_group.reset_forwarding()
                self.mark_invalid(i)
                self.program_counter = self.instructions.get_instruction_by_key(self.runtime[i].instruction.o.get_value())
                self.add_instruction()
            
            i += 1

        self.cycle += 1
        return self.end and self.runtime[-1].get_cycle() == 5

    def mark_invalid(self, index):
        for i in range(index + 1, len(self.runtime)):
            self.runtime[i].set_invalid()

    def __str__(self):
        s = ''
        for i in self.runtime:
            s += str(i) + '\n'
        return s
