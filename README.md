# Election Counter

# 👋 Information for candidates: We will be pair programming during the interview. Please pay attention to the following:

- 🖥️ Please have Xcode installed and correctly configured, and be ready to run the project during the interview
- 📚 If possible, please clone and run the project before the interview. Feel free to run and study it
- 🎯 Go through the documentation in the end of the file
- 🙏 Please revert any changes before the interview starts
- 🐳 We will be pair programming for a couple hours, so grab yourself a cup of water and stay hydrated. We hope you enjoy programming with us! 

-------- 

## Pairing Session Flow

The goal for this pairing session is to create an app that can determine the winner of an election. The name of each candidate counts as one vote, and names are separated by white spaces. We need an app that, given the list of votes, determines the top three most voted candidates - we don't care about the name, only about the voting count for now

### First Step - Figuring out the algorithm

The idea here is to create a component that will solve the algorithmic problem

### Second step - Fetching the election results from an API

Here we will fetch the election results from a service component which is already implemented at [Sources/ElectionResultService.swift](https://github.com/motain/of-ios-interview/blob/main/ElectionCounter/ElectionCounter/Services/ElectionResultService.swift). We will be refactoring the component before we start using it.

### Third step - Displaying the results on the screen

Here we will be using any UI technology of your choice to display the results fetched from the API to the user


No one is expected to complete all three, they are mostly general directions that we can work on during the interview.
