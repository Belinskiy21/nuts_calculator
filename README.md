# Nuts delivery calculator

   NOTES:
    *You can run the app with the test.txt file from the project folder, or create your own one. The file should contain only real numbers. All letters in the file will be interpretated as 0*

## Commands

- to run app:

  ``` Ruby
    cd ./nuts_transportation
    ruby main.rb <file.txt>
  ```

- to run tests:

  ``` Ruby
    cd ./nuts_transportation
    bundle install --path .bundle
    bundle exec rspec
  ```

  Input of the current test.txt file:

  ``` bash
  D = 1000, N = 3000, F = 1, C = 1000, X = 0
  D = 1000, N = 7000, F = 1, C = 1000, X = 0
  D = 1000, N = 100000, F = 1, C = 1000, X = 0
  D = 1111, N = 3000, F = 1, C = 1000, X = 0
  D = 1000, N = 3000, F = 1, C = 1111, X = 111
  D = 1111, N = 3334, F = 3, C = 4444, X = 1111
  D = 111, N = 3333, F = 3, C = 2222, X = 1889
  D = 111, N = 3333, F = 3, C = 1000, X = 667
  D = 10000, N = 1111111, F = 3, C = 1111, X = 0
  D = 10000, N = 1111111, F = 5, C = 1111, X = 0
  D = 1000, N = 1000000, F = 2, C = 1000, X = 0
  D = 1111, N = 22222222, F = 5, C = 3333, X = 0
  D = 1000, N = 12000, F = 5, C = 3000, X = 0
  ```

## Errors

- If the input file contains a negative number:
   `The negative number input detected on the line: #number detected!`

- If line size more or less then 4:
    `Wrong number of inputs detected on line: #number`
