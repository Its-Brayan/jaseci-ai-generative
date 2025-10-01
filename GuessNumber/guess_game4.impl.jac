impl turn.check{
    guess = input("Guess an number between 1 and 10: ");
    if guess.isdigit(){
        visitor.process_guess(int(guess));
    }
    else{
        print("Thats not a valid number, please try again");
    }
    visit [-->];
}
impl GuessGame.start_game{
    end: `root | turn = here;
    for i = 0 to i < 10 by i+=1{
        end ++> (end := turn());
    }
    visit [-->];
}
impl GuessGame.process_guess(guess:int){
    if guess > self.correct_number{
        print("Too High!");
    }elif guess < self.correct_number{
        print("Too Low!");
    }else{
        print("Congratulations! You've guessed the correct number!");
        disengage;
    }
}