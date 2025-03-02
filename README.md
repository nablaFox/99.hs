## [Ninety-Nine Haskell Problems](https://wiki.haskell.org/99_questions)

### Lists

##### 1. Find the last element of a list

    λ> last [1,2,3,4]
    4
    λ> last ['x','y','z']
    'z'

Solution: [p1.hs](lists/p1.hs)

#### 2. Find the last-but-one (or second-last) element of a list

    λ> butLast [1,2,3,4]
    3
    λ> butLast ['a'..'z']
    'y'

Solution: [p2.hs](lists/p2.hs)

#### 3. Find the K'th element of a list

    λ> elementAt [1,2,3] 2
    2
    λ> elementAt "haskell" 5
    'e'

Solution: [p3.hs](lists/p3.hs)

#### 4. Find the number of elements in a list

    λ> length [123, 456, 789]
    3
    λ> length "Hello, world!"
    13

Solution: [p4.hs](lists/p4.hs)
