# Aliases For Convenience
- For convenience, some aliases has been defined (temporary)
    ```sh
    source aliases.sh
    ```

# Fetch All Input Data For A Year
- For example, to download inputs for 2015:
    ```sh
    fetch 2015
    ```
    <details><summary>[click for code without alias]</summary>

    ```sh
    bash inputs/fetch.sh 2015
    ```
    </details>
- You will be asked to input your session key. For that go to AOC website, open `dev tools > network tab` and grab your `session` key from cookies (can be found in https get requests).
    ```sh
    Session key: 
    ```

# Load Input and Solution (If Exists)
- Load a input to `temp.txt` and solutions for some year (e.g. `2015`), day (e.g. `5`) and part (e.g. `2`)
    ```sh
    load 2015 5 2
    ```
    <details><summary>[click for code without alias]</summary>

    ```sh
    bash solutions/load.sh 2015 5 2
    ```
    </details>

# Create Solution
- Templates for each language are in `solutions/0_1.lang` file.
- Every solution file should have the entry function `soln(buff)`. This is called by `main` functions (of each language) over every line of the input file as buffer.

# Run Solution
- First load input and solution for a specific puzzle (year/day/part)
- Then run solution for a specific language (`c`,`py` or `rs`)
    ```sh
    run py
    ```
    <details><summary>[click for code without alias]</summary>

    ```sh
    bash run.sh py
    ```
    </details>

# Save Solution
- Write your solution in `temp/puzzle.lang` file.
- Save your solution to proper solution folder and file.
    ```sh
    save c
    ```
    <details><summary>[click for code without alias]</summary>

    ```sh
    bash solutions/save.sh c
    ```
    </details>