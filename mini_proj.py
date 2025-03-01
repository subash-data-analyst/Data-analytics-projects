class Candidate:
    def __init__(self, name):
        self.name = name
        self.votes = 0

    def receive_vote(self):
        self.votes += 1

class Voter:
    def __init__(self, name):
        self.name = name
        self.has_voted = False

    def vote(self, candidate):
        if not self.has_voted:
            candidate.receive_vote()
            self.has_voted = True
            print(f"{self.name} has voted for {candidate.name}")
        else:
            print(f"{self.name} has already voted!")

def show_results(candidates):
    print("Election Results:")
    for candidate in candidates:
     print(f"{candidate.name}: {candidate.votes} votes")

# List of candidates
candidates = [Candidate("Alice"), Candidate("Bob"), Candidate("Charlie")]

# List of voters
voters = [Voter("Voter 1"), Voter("Voter 2"), Voter("Voter 3"),Voter("Voter 4")]

# Simulating voting process
voters[0].vote(candidates[0])
voters[1].vote(candidates[1])
voters[2].vote(candidates[0])  # Repeat voting attempt
voters[1].vote(candidates[0])
# Displaying results
show_results(candidates)

