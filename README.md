# NtoS

NtoS is extending Fixnum class in Ruby to convert numbers into its string representation in English. NtoS can handle numbers up to trillions and support negatives.

Example:

```rb
1.to_text #=> "one"
-21.to_text #=> "minus twenty one"
10_000_000.to_text #=> "ten million"
100_000_000.to_text #=> "one hundred million"
1_000_000_000.to_text #=> "one billion"
1_000_000_001.to_text #=> "one billion one"
1_000_000_011.to_text #=> "one billion eleven"
1_000_000_111.to_text #=> "one billion one hundred eleven"
1_000_001_111.to_text #=> "one billion one thousand one hundred eleven"
1_000_011_111.to_text #=> "one billion eleven thousand one hundred eleven"
1_000_111_111.to_text #=> "one billion one hundred eleven thousand one hundred eleven"
1_001_111_111.to_text #=> "one billion one million one hundred eleven thousand one hundred eleven"
1_011_111_111.to_text #=> "one billion eleven million one hundred eleven thousand one hundred eleven"
1_111_111_111.to_text #=> "one billion one hundred eleven million one hundred eleven thousand one hundred eleven"
11_111_111_111.to_text #=> "eleven billion one hundred eleven million one hundred eleven thousand one hundred eleven"
111_111_111_111.to_text #=> "one hundred eleven billion one hundred eleven million one hundred eleven thousand one hundred eleven"
1_111_111_111_111.to_text #=> "one trillion one hundred eleven billion one hundred eleven million one hundred eleven thousand one hundred eleven"
1_111_111_111_121.to_text #=> "one trillion one hundred eleven billion one hundred eleven million one hundred eleven thousand one hundred twenty one"
-1_111_111_111_121.to_text #=> "minus one trillion one hundred eleven billion one hundred eleven million one hundred eleven thousand one hundred twenty one"
```