
Representing objects like actions or units uses the recursive form:

    identifier_for_object (positional_arguments keyword_arguments)

For example

    CoolUnit (7, -12, killcount=2)

Data will typically be zipped, so keywords take minimal space. They do decrease the chance of weird bugs when loading old data files.

Basic data types are represented as:

    -12, 7          # for ints
    3.14, 7.0       # for floats
    "hello,bye!"    # for strings
    {a=7, b="hi"}   # for (hash)maps
    [1, 2, 4]       # for lists, arrays, vectors...

...Then again, it looks almost exactly like JSON, so I should probably just stick with that...


