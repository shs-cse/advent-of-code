from temp import puzzle

def main() -> None:
    with open("temp/puzzle.txt") as fp:
        for buff in fp.readlines():
            puzzle.soln(buff)

if __name__ == "__main__":
    main()