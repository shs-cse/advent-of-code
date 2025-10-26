from temp import puzzle

def main() -> None:
    with open("temp/puzzle.txt") as fp:
        for buff in fp.readlines():
            puzzle.process(buff)
    puzzle.result()

if __name__ == "__main__":
    main()