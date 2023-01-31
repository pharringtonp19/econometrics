data TicTacToe a = TicTacToe 
    { topLeft ::a
    , topCenter :: a
    , topRight :: a
    , midLeft ::a 
    , midCenter :: a 
    , midRight :: a 
    , botLeft ::a 
    , botCenter :: a 
    , botRight :: a }

data Three = One | Two | Three 
    deriving (Eq, Ord, Enum, Bounded)

data TicTacToe2 a = TicTacToe2 
    { board :: Three -> Three -> a
    }