displacement = {"(": 1, ")": -1}


def process(buff: str) -> None:
    floor = 0
    for i, move in enumerate(buff, 1):
        floor += displacement[move]
        if floor == -1:
            break
    print(i)


def solution() -> None:
    pass
