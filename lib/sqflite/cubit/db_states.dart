abstract class ToDoStates {}

class InitialState extends ToDoStates {} // InitialState , ToDoStates

class InsertLoadingState extends ToDoStates {}
class InsertSuccessState extends ToDoStates {}
class InsertErrorState extends ToDoStates {}

class UpdateLoadingState extends ToDoStates {}
class UpdateSuccessState extends ToDoStates {}
class UpdateErrorState extends ToDoStates {}
